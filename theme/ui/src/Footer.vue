<template>
  <div>
    <footer v-if="isEnVersion">
      <div class="wrapper">
        <div class="main_footerWrapper">
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" target="_self" href="/faq">FAQ</a></li>
                <li><a class="nav-link" target="_self" href="/contest">About</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" href="/career">Career</a></li>
                <li><a class="nav-link" rel="noopener noreferrer" href="https://quantnet.ai/personalpage/login"
                       target="_self">My account</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" rel="noopener noreferrer" href="/personalinfo" target="_self">About Personal
                  Data
                </a></li>
                <li><a class="nav-link" rel="noopener noreferrer" href="/termsofuse" target="_self">Terms and
                  Conditions</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" rel="noopener noreferrer" href="/cookies" target="_self">Cookies policy</a></li>
                <li>
                  <div class="socButtonWrapper"><a rel="noopener noreferrer" title="VK" aria-label="VK"
                                                   href="https://vk.com/quantnetrussia" target="_self" class="VK">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="vk"
                         class="svg-inline--fa fa-vk fa-w-18 fa-fw fa-2x " role="img" xmlns="http://www.w3.org/2000/svg"
                         viewBox="0 0 576 512">
                      <path fill="currentColor"
                            d="M545 117.7c3.7-12.5 0-21.7-17.8-21.7h-58.9c-15 0-21.9 7.9-25.6 16.7 0 0-30 73.1-72.4 120.5-13.7 13.7-20 18.1-27.5 18.1-3.7 0-9.4-4.4-9.4-16.9V117.7c0-15-4.2-21.7-16.6-21.7h-92.6c-9.4 0-15 7-15 13.5 0 14.2 21.2 17.5 23.4 57.5v86.8c0 19-3.4 22.5-10.9 22.5-20 0-68.6-73.4-97.4-157.4-5.8-16.3-11.5-22.9-26.6-22.9H38.8c-16.8 0-20.2 7.9-20.2 16.7 0 15.6 20 93.1 93.1 195.5C160.4 378.1 229 416 291.4 416c37.5 0 42.1-8.4 42.1-22.9 0-66.8-3.4-73.1 15.4-73.1 8.7 0 23.7 4.4 58.7 38.1 40 40 46.6 57.9 69 57.9h58.9c16.8 0 25.3-8.4 20.4-25-11.2-34.9-86.9-106.7-90.3-111.5-8.7-11.2-6.2-16.2 0-26.2.1-.1 72-101.3 79.4-135.6z"></path>
                    </svg>
                  </a><a rel="noopener noreferrer" title="Telegram" aria-label="Telegram"
                         href="https://t.me/quantnetrussia" target="_self" class="TG">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="telegram-plane"
                         class="svg-inline--fa fa-telegram-plane fa-w-14 fa-fw fa-2x " role="img"
                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                      <path fill="currentColor"
                            d="M446.7 98.6l-67.6 318.8c-5.1 22.5-18.4 28.1-37.3 17.5l-103-75.9-49.7 47.8c-5.5 5.5-10.1 10.1-20.7 10.1l7.4-104.9 190.9-172.5c8.3-7.4-1.8-11.5-12.9-4.1L117.8 284 16.2 252.2c-22.1-6.9-22.5-22.1 4.6-32.7L418.2 66.4c18.4-6.9 34.5 4.1 28.5 32.2z"></path>
                    </svg>
                  </a></div>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="copywriteWrapper ">
          <div class="main_footer"><a class="logo" href="/">Home</a></div>
          <span
              class="copywrite">Copyright © {{ currentYear }} QuantNet LLC / OOO QuantNet. All rights reserved.</span>
        </div>
      </div>
    </footer>
    <footer v-else>
      <div class="wrapper">
        <div class="main_footerWrapper">
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" target="_self" href="/faq">FAQ</a></li>
                <li><a class="nav-link" target="_self" href="/contest">О нас</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" href="/career">Карьера</a></li>
                <li><a class="nav-link" rel="noopener noreferrer" href="https://quantnet.ai/personalpage/login"
                       target="_self">Мой аккаунт</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" rel="noopener noreferrer" href="/personalinfo" target="_self">О персональных
                  данных</a></li>
                <li><a class="nav-link" rel="noopener noreferrer" href="/termsofuse" target="_self">Условия и
                  положения</a></li>
              </ul>
            </nav>
          </div>
          <div class="main_footer">
            <nav class="footerMenu">
              <ul>
                <li><a class="nav-link" rel="noopener noreferrer" href="/cookies" target="_self">Использование
                  cookies</a></li>
                <li>
                  <div class="socButtonWrapper"><a rel="noopener noreferrer" title="VK" aria-label="VK"
                                                   href="https://vk.com/quantnetrussia" target="_self" class="VK">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="vk"
                         class="svg-inline--fa fa-vk fa-w-18 fa-fw fa-2x " role="img" xmlns="http://www.w3.org/2000/svg"
                         viewBox="0 0 576 512">
                      <path fill="currentColor"
                            d="M545 117.7c3.7-12.5 0-21.7-17.8-21.7h-58.9c-15 0-21.9 7.9-25.6 16.7 0 0-30 73.1-72.4 120.5-13.7 13.7-20 18.1-27.5 18.1-3.7 0-9.4-4.4-9.4-16.9V117.7c0-15-4.2-21.7-16.6-21.7h-92.6c-9.4 0-15 7-15 13.5 0 14.2 21.2 17.5 23.4 57.5v86.8c0 19-3.4 22.5-10.9 22.5-20 0-68.6-73.4-97.4-157.4-5.8-16.3-11.5-22.9-26.6-22.9H38.8c-16.8 0-20.2 7.9-20.2 16.7 0 15.6 20 93.1 93.1 195.5C160.4 378.1 229 416 291.4 416c37.5 0 42.1-8.4 42.1-22.9 0-66.8-3.4-73.1 15.4-73.1 8.7 0 23.7 4.4 58.7 38.1 40 40 46.6 57.9 69 57.9h58.9c16.8 0 25.3-8.4 20.4-25-11.2-34.9-86.9-106.7-90.3-111.5-8.7-11.2-6.2-16.2 0-26.2.1-.1 72-101.3 79.4-135.6z"></path>
                    </svg>
                  </a><a rel="noopener noreferrer" title="Telegram" aria-label="Telegram"
                         href="https://t.me/quantnetrussia" target="_self" class="TG">
                    <svg aria-hidden="true" focusable="false" data-prefix="fab" data-icon="telegram-plane"
                         class="svg-inline--fa fa-telegram-plane fa-w-14 fa-fw fa-2x " role="img"
                         xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512">
                      <path fill="currentColor"
                            d="M446.7 98.6l-67.6 318.8c-5.1 22.5-18.4 28.1-37.3 17.5l-103-75.9-49.7 47.8c-5.5 5.5-10.1 10.1-20.7 10.1l7.4-104.9 190.9-172.5c8.3-7.4-1.8-11.5-12.9-4.1L117.8 284 16.2 252.2c-22.1-6.9-22.5-22.1 4.6-32.7L418.2 66.4c18.4-6.9 34.5 4.1 28.5 32.2z"></path>
                    </svg>
                  </a></div>
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <div class="copywriteWrapper ">
          <div class="main_footer"><a class="logo" href="/">Home</a></div>
          <span class="copywrite">Copyright © {{ currentYear }} QuantNet LLC/OOO КвантНэт. Все права защищены.</span>
        </div>
      </div>
    </footer>
  </div>
</template>

<script>
import LocaleHelper from "./LocaleHelper";

export default {
  computed: {
    isEnVersion() {
      return LocaleHelper.getCurrentLocale() === 'en';
    },
    currentYear() {
      return new Date().getFullYear();
    }
  }
}
</script>

<style lang="scss">

$average_font: "Gotham Pro Regular";
$light_font: 'Gotham Pro Light';

// Main colors
$light_main_color: #ffffff;
$icons_vk: #44668d;
$icons_tg: #35ade1;
$dark_main_color: #020202;
$middle_main_color: #f0f5f7;
$light_border: #cccccc;
$contrast_color: #d66d36;
$light_font_color: #999999;

footer {
  background: $dark_main_color;
  font-family: $average_font;
  clear: both;
  position: relative;
  height: auto;
  padding: 50px;

  .wrapper {
    max-width: 1180px;
    margin: 0 auto;

    .socButtonWrapper {
      width: 100%;
      min-width: 100px;
      display: inline-flex;
      justify-content: space-evenly;
    }

    .copywriteWrapper {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-bottom: 1rem;
      padding-top: 5px;

      .copywrite {
        color: $light_border !important;
        font-size: 16px;
        font-family: $average_font !important;
      }
    }
  }

  .main_footerWrapper {
    display: flex;
    align-items: flex-start;
    justify-content: space-around;
  }

  .flex_rows_break {
    flex-basis: 100%;
    height: 0;

    & + .main_footer {
      width: 100%;
    }
  }

  .main_footer {
    //margin: 0 15% 0 5%;

    .logo {
      color: $light_main_color;
      display: inline-block;
      font-size: 2em;
      //padding-top: 10px;
      text-align: left;
      position: relative;
      background: url("static/img/logopng.png") no-repeat;
      background-size: contain;
      width: 10%;
      min-width: 145px;
      height: 30px;
      text-indent: -9999px;
      margin: 0 5% 3% 5%;
    }

    .footerMenu {
      ul,
      li {
        margin: 0;
        padding: 0;
        white-space: nowrap;
        text-align: center;
        margin-bottom: 15px;

        a {
          text-align: center;
          font-size: 16px;
          font-family: $average_font;
        }
      }

      ul {
        list-style: none;
        width: 100%;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        justify-content: flex-start;
        background: $dark_main_color;
      }

      li {
        margin: 0 7% 0 0;
        position: relative;
        width: 100%;

        .dropdown-item {
          color: $middle_main_color;
        }

        &.copyrightWrap {
          padding: 6% 0;
          color: $light_font_color;
          font-size: 0.8em;
          width: 100%;
          white-space: nowrap;

          a {
            margin-right: 10%;
            color: $light_border;
            padding-top: 0;
            text-decoration: none;

            &:hover {
              color: $light_main_color;
              text-decoration: underline;
            }
          }
        }
      }

      a {
        background: inherit;
        margin-bottom: 15px;
        display: block;
        font-family: $average_font;
        padding: 10px;
        text-align: left;
        text-decoration: none;
        font-size: 0.9em;
        -webkit-transition: all 0.25s ease;
        -moz-transition: all 0.25s ease;
        -ms-transition: all 0.25s ease;
        -o-transition: all 0.25s ease;
        transition: all 0.25s ease;
        color: $light_border;
        padding-top: 0;

        svg, path {
          color: $icons_tg !important;
        }
      }


      li:hover {
        .nav-link {
          color: $light_main_color;
          text-decoration: underline;
        }
      }

      .submenu {
        transition-delay: 200ms;
        left: 0;
        opacity: 0;
        position: absolute;
        top: 20px;
        visibility: hidden;
        z-index: 5;
        min-width: 160px;
      }

      li:hover ul.submenu {
        opacity: 0.9;
        color: $light_main_color;
        top: 40px; /* adjust this as per top nav padding top & bottom comes */
        visibility: visible;
      }

      .submenu li {
        float: none;
        width: 100%;
      }

      .submenu a {
        color: $light_main_color;
        background-color: $dark_main_color;
        text-align: left;
        font-size: 0.8em;

        &:hover {
          color: $contrast_color;
        }
      }
    }
  }
}

@media only screen and (max-width: 768px) {
  footer {
    height: auto;
    background: $dark_main_color;

    .copywrite {
      font-size: 12px !important;
    }

    .wrapper {
      .copywriteWrapper {
        padding-top: 30px;

        .main_footer {
          text-align: center;

          .logo {
            margin-bottom: 0
          }
        }

        .copywrite {
          text-align: center;
        }
      }
    }

    .main_footerWrapper {
      flex-direction: column;
    }

    .main_footer {
      margin: 0;
      width: 100%;

      &:last-child {
        margin: 0;
      }

      .footerMenu {
        ul, li {
          margin: 0;
        }

        li {
          &.copyrightWrap {
            white-space: normal;
            box-sizing: border-box;
          }

          .socButtonWrapper {
            justify-content: center;

            a {
              padding: 0;
            }
          }
        }
      }
    }
  }
}

/*
For TG and VK icons
*/

svg:not(:root).svg-inline--fa {
  overflow: visible;
}

.svg-inline--fa {
  display: inline-block;
  font-size: inherit;
  height: 1em;
  overflow: visible;
  vertical-align: -0.125em;
}

.svg-inline--fa.fa-lg {
  vertical-align: -0.225em;
}

.svg-inline--fa.fa-w-1 {
  width: 0.0625em;
}

.svg-inline--fa.fa-w-2 {
  width: 0.125em;
}

.svg-inline--fa.fa-w-3 {
  width: 0.1875em;
}

.svg-inline--fa.fa-w-4 {
  width: 0.25em;
}

.svg-inline--fa.fa-w-5 {
  width: 0.3125em;
}

.svg-inline--fa.fa-w-6 {
  width: 0.375em;
}

.svg-inline--fa.fa-w-7 {
  width: 0.4375em;
}

.svg-inline--fa.fa-w-8 {
  width: 0.5em;
}

.svg-inline--fa.fa-w-9 {
  width: 0.5625em;
}

.svg-inline--fa.fa-w-10 {
  width: 0.625em;
}

.svg-inline--fa.fa-w-11 {
  width: 0.6875em;
}

.svg-inline--fa.fa-w-12 {
  width: 0.75em;
}

.svg-inline--fa.fa-w-13 {
  width: 0.8125em;
}

.svg-inline--fa.fa-w-14 {
  width: 0.875em;
}

.svg-inline--fa.fa-w-15 {
  width: 0.9375em;
}

.svg-inline--fa.fa-w-16 {
  width: 1em;
}

.svg-inline--fa.fa-w-17 {
  width: 1.0625em;
}

.svg-inline--fa.fa-w-18 {
  width: 1.125em;
}

.svg-inline--fa.fa-w-19 {
  width: 1.1875em;
}

.svg-inline--fa.fa-w-20 {
  width: 1.25em;
}

.svg-inline--fa.fa-pull-left {
  margin-right: 0.3em;
  width: auto;
}

.svg-inline--fa.fa-pull-right {
  margin-left: 0.3em;
  width: auto;
}

.svg-inline--fa.fa-border {
  height: 1.5em;
}

.svg-inline--fa.fa-li {
  width: 2em;
}

.svg-inline--fa.fa-fw {
  width: 1.25em;
}

.fa-layers svg.svg-inline--fa {
  bottom: 0;
  left: 0;
  margin: auto;
  position: absolute;
  right: 0;
  top: 0;
}

.fa-layers {
  display: inline-block;
  height: 1em;
  position: relative;
  text-align: center;
  vertical-align: -0.125em;
  width: 1em;
}

.fa-layers svg.svg-inline--fa {
  -webkit-transform-origin: center center;
  transform-origin: center center;
}

.fa-layers-counter, .fa-layers-text {
  display: inline-block;
  position: absolute;
  text-align: center;
}

.fa-layers-text {
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
  -webkit-transform-origin: center center;
  transform-origin: center center;
}

.fa-layers-counter {
  background-color: #ff253a;
  border-radius: 1em;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  color: #fff;
  height: 1.5em;
  line-height: 1;
  max-width: 5em;
  min-width: 1.5em;
  overflow: hidden;
  padding: 0.25em;
  right: 0;
  text-overflow: ellipsis;
  top: 0;
  -webkit-transform: scale(0.25);
  transform: scale(0.25);
  -webkit-transform-origin: top right;
  transform-origin: top right;
}

.fa-layers-bottom-right {
  bottom: 0;
  right: 0;
  top: auto;
  -webkit-transform: scale(0.25);
  transform: scale(0.25);
  -webkit-transform-origin: bottom right;
  transform-origin: bottom right;
}

.fa-layers-bottom-left {
  bottom: 0;
  left: 0;
  right: auto;
  top: auto;
  -webkit-transform: scale(0.25);
  transform: scale(0.25);
  -webkit-transform-origin: bottom left;
  transform-origin: bottom left;
}

.fa-layers-top-right {
  right: 0;
  top: 0;
  -webkit-transform: scale(0.25);
  transform: scale(0.25);
  -webkit-transform-origin: top right;
  transform-origin: top right;
}

.fa-layers-top-left {
  left: 0;
  right: auto;
  top: 0;
  -webkit-transform: scale(0.25);
  transform: scale(0.25);
  -webkit-transform-origin: top left;
  transform-origin: top left;
}

.fa-lg {
  font-size: 1.3333333333em;
  line-height: 0.75em;
  vertical-align: -0.0667em;
}

.fa-xs {
  font-size: 0.75em;
}

.fa-sm {
  font-size: 0.875em;
}

.fa-1x {
  font-size: 1em;
}

.fa-2x {
  font-size: 2em;
}

.fa-3x {
  font-size: 3em;
}

.fa-4x {
  font-size: 4em;
}

.fa-5x {
  font-size: 5em;
}

.fa-6x {
  font-size: 6em;
}

.fa-7x {
  font-size: 7em;
}

.fa-8x {
  font-size: 8em;
}

.fa-9x {
  font-size: 9em;
}

.fa-10x {
  font-size: 10em;
}

.fa-fw {
  text-align: center;
  width: 1.25em;
}

.fa-ul {
  list-style-type: none;
  margin-left: 2.5em;
  padding-left: 0;
}

.fa-ul > li {
  position: relative;
}

.fa-li {
  left: -2em;
  position: absolute;
  text-align: center;
  width: 2em;
  line-height: inherit;
}

.fa-border {
  border: solid 0.08em #eee;
  border-radius: 0.1em;
  padding: 0.2em 0.25em 0.15em;
}

.fa-pull-left {
  float: left;
}

.fa-pull-right {
  float: right;
}

.fa.fa-pull-left,
.fas.fa-pull-left,
.far.fa-pull-left,
.fal.fa-pull-left,
.fab.fa-pull-left {
  margin-right: 0.3em;
}

.fa.fa-pull-right,
.fas.fa-pull-right,
.far.fa-pull-right,
.fal.fa-pull-right,
.fab.fa-pull-right {
  margin-left: 0.3em;
}

.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}

.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}

@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}

.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  transform: rotate(90deg);
}

.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  transform: rotate(180deg);
}

.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  transform: rotate(270deg);
}

.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  transform: scale(-1, 1);
}

.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  transform: scale(1, -1);
}

.fa-flip-both, .fa-flip-horizontal.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(-1, -1);
  transform: scale(-1, -1);
}

:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical,
:root .fa-flip-both {
  -webkit-filter: none;
  filter: none;
}

.fa-stack {
  display: inline-block;
  height: 2em;
  position: relative;
  width: 2.5em;
}

.fa-stack-1x,
.fa-stack-2x {
  bottom: 0;
  left: 0;
  margin: auto;
  position: absolute;
  right: 0;
  top: 0;
}

.svg-inline--fa.fa-stack-1x {
  height: 1em;
  width: 1.25em;
}

.svg-inline--fa.fa-stack-2x {
  height: 2em;
  width: 2.5em;
}

.fa-inverse {
  color: #fff;
}

.sr-only {
  border: 0;
  clip: rect(0, 0, 0, 0);
  height: 1px;
  margin: -1px;
  overflow: hidden;
  padding: 0;
  position: absolute;
  width: 1px;
}

.sr-only-focusable:active, .sr-only-focusable:focus {
  clip: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  position: static;
  width: auto;
}

.svg-inline--fa .fa-primary {
  fill: var(--fa-primary-color, currentColor);
  opacity: 1;
  opacity: var(--fa-primary-opacity, 1);
}

.svg-inline--fa .fa-secondary {
  fill: var(--fa-secondary-color, currentColor);
  opacity: 0.4;
  opacity: var(--fa-secondary-opacity, 0.4);
}

.svg-inline--fa.fa-swap-opacity .fa-primary {
  opacity: 0.4;
  opacity: var(--fa-secondary-opacity, 0.4);
}

.svg-inline--fa.fa-swap-opacity .fa-secondary {
  opacity: 1;
  opacity: var(--fa-primary-opacity, 1);
}

.svg-inline--fa mask .fa-primary,
.svg-inline--fa mask .fa-secondary {
  fill: black;
}

.fad.fa-inverse {
  color: #fff;
}
</style>
