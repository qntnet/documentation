import Vue from 'vue'

import './vuepress/styles/theme.styl'
import './sphinx-theme.styl'

import {utm} from 'url-utm-params';
import VueAnalytics from 'vue-analytics'

import OutboundLink from './OutboundLink.vue'
import Navbar from './Navbar.vue'
import NavLinks from './NavLinks.vue'
import Sidebar from './Sidebar.vue'
import Page from './Page.vue'
import Footer from './Footer.vue'
import AboutFeedback from "./AboutFeedback";


Vue.config.productionTip = false

Vue.component('outboundlink', OutboundLink)
Vue.component('navbar', Navbar)
Vue.component('navlinks', NavLinks)
Vue.component('sidebar', Sidebar)
Vue.component('page', Page)
Vue.component('footer-quantnet', Footer)
Vue.component('about-feedback', AboutFeedback)


// fake router element
Vue.component('router-link', {
    props: ['to'],
    template: '<a :href="to"><slot></slot></a>',
})


Vue.use(VueAnalytics, {
    id: 'UA-139360288-1'
})

new Vue({
    el: '#app',
    // taken from Layout.vue
    data: {
        isSidebarOpen: false,
        swUpdateEvent: null
    },
    computed: {
        pageClasses() {
            //const userPageClass = this.$page.frontmatter.pageClass
            return [
                {
                    // 'no-navbar': !this.shouldShowNavbar,
                    'sidebar-open': this.isSidebarOpen,
                    // 'no-sidebar': !this.shouldShowSidebar
                },
                // userPageClass
            ]
        }
    },
    methods: {
        toggleSidebar(to) {
            this.isSidebarOpen = typeof to === 'boolean' ? to : !this.isSidebarOpen
        },
    },
    mounted: function () {
        const utmName = 'utm_is_exist';
        if (!isUtmExist(utmName)) {
            setUtmInCookie(utmName);
        }
        const qn_uid = getCookie('qn_uid');
        let params = qn_uid ? {UserID: qn_uid} : {};


        createYandexMetrica(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

        const ym = window.ym;

        ym(51571100, "init", {
            clickmap: true,
            trackLinks: true,
            accurateTrackBounce: true,
            webvisor: true,
            trackHash: true,
            userParams: params
        });

        function createYandexMetrica(m, e, t, r, i, k, a) {
            m[i] = m[i] || function () {
                (m[i].a = m[i].a || []).push(arguments)
            };
            m[i].l = 1 * new Date();
            k = e.createElement(t), a = e.getElementsByTagName(t)[0], k.async = 1, k.src = r, a.parentNode.insertBefore(k, a)
        }

        function isUtmExist(utmName) {
            const currentUtm = getCookie(utmName);
            return currentUtm !== ''
                && currentUtm !== undefined
                && currentUtm !== null
                && currentUtm !== 'undefined'
                && Object.keys(currentUtm).length !== 0;
        }

        function setUtmInCookie(utmName) {
            const metrics = utm(window.location.href, '&');
            for (const [key, value] of Object.entries(metrics)) {
                const item = `${key}=${value}`;
                document.cookie = item;
            }
            document.cookie = `${utmName}=exist`;
        }

        function getCookie(cname) {
            const name = cname + "=";
            const decodedCookie = decodeURIComponent(document.cookie);
            let ca = decodedCookie.split(';');
            for (let i = 0; i < ca.length; i++) {
                let c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }
    }
})
