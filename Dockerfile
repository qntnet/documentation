FROM node:22-bookworm-slim AS node
FROM debian:bookworm AS builder
# build: docker build . -t registry.quantnet-ai.ru/quantnet/documentation:dev
# run: docker run -p 8880:80 --rm registry.quantnet-ai.ru/quantnet/documentation:dev
# push: docker push registry.quantnet-ai.ru/quantnet/documentation:dev
# urls: http://localhost:8880/documentation/en/ http://localhost:8880/documentation/ru/

# build: docker build . -t registry.quantnet-ai.ru/quantnet/documentation:prod
# push: docker push registry.quantnet-ai.ru/quantnet/documentation:prod

RUN apt update && apt -y install curl bzip2 openssh-client \
    && case "$(uname -m)" in x86_64) miniconda_arch=x86_64 ;; aarch64|arm64) miniconda_arch=aarch64 ;; *) echo "Unsupported architecture: $(uname -m)" >&2; exit 1 ;; esac \
    && curl -sSL "https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-${miniconda_arch}.sh" -o /tmp/miniconda.sh \
    && bash /tmp/miniconda.sh -bfp /usr/local \
    && rm -rf /tmp/miniconda.sh \
    && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main \
    && conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r \
    && conda update conda \
    && apt -y remove curl bzip2 openssh-client \
    && apt -y autoremove \
    && apt autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log \
    && conda clean --all --yes

RUN  apt update && apt install make \
    && apt autoclean \
    && rm -rf /var/lib/apt/lists/* /var/log/dpkg.log


RUN conda install -y \
    'sphinx=8.2' \
    'myst-parser' \
    'conda-forge::sphinx-markdown-tables' \
    'nbsphinx' \
    'IPython' \
     && conda clean --all --yes

COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=node /usr/local/lib/node_modules /usr/local/lib/node_modules
RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
    && ln -s /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx

COPY theme /opt/theme
RUN cd /opt/theme/ui   \
    && npm install \
    && npm run build \
    && cp -r dist/. ../sphinx_press_theme/static/ \
    && cd .. && pip3 install -e .

RUN pip install sphinx_press_theme

COPY en /opt/en
RUN cd /opt/en && make clean && make html

COPY ru /opt/ru
RUN cd /opt/ru && make clean && make html

FROM nginx:1.19 as production

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /opt/en/build/html /opt/en
COPY --from=builder /opt/ru/build/html /opt/ru
