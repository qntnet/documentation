<template>
  <header>
    <div v-if="isEnVersion" class="top_header">
      <div class="logoWrapper"><a class="logo" href="/">Home</a></div>
      <nav class="dropdownmenu">
        <ul>
          <li><a class="nav-link" target="_self" href="/contest">About</a></li>
          <li><a class="nav-link" target="_self" href="/learn">Learn</a></li>
          <li><a class="nav-link" target="_self" href="/events">Events</a></li>
          <li><a class="nav-link" rel="noopener noreferrer" href="/contacts" target="_self">Contact</a></li>
          <li><a class="nav-link" target="_self" href="/faq">FAQ</a></li>
        </ul>
      </nav>
      <div class="headerWrapper">
        <div id="wrapper"><label id="nav-icon3" class="menu-icon"
                                 for="toggle"><span></span><span></span><span></span><span></span></label><input
            type="checkbox" id="toggle">
          <nav>
            <ul>
              <li><a class="nav-link" href="/contest" target="_self">About</a></li>
              <li><a class="nav-link" href="/learn" target="_self">Learn</a></li>
              <li><a class="nav-link" href="/events" target="_self">Events</a></li>
              <li><a class="nav-link" rel="noopener noreferrer" href="/contacts" target="_self">Contact</a></li>
              <li><a class="nav-link" href="/faq" target="_self">FAQ</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="langWrapper" style="display: flex; justify-content: space-between; align-items: center;">
        <div class="en languagePickerWrapper">
          <ul style="color: white;">
            <li class="ru"><a :href="urlRU">RU</a></li>
            <li class="en"><a :href="urlEN">EN</a></li>
          </ul>
        </div>
        <a class="myAccountLink" rel="noopener noreferrer" href="https://quantnet.ai/personalpage/login"
           target="_self" style="display: block;">Sign In</a>
        <div class="usernameLinkWrapper" style="display: none;"><span class="usernameLink"></span><span
            class="usernameIcon"><svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="user"
                                      class="svg-inline--fa fa-user fa-w-14 fa-fw fa-sm " role="img"
                                      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path
            fill="currentColor"
            d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"></path></svg></span><span
            class="chevron"></span>
          <ul>
            <li class="usernameHeader"><span style="color: rgb(214, 109, 54);"></span></li>
            <li><a rel="noopener noreferrer" href="https://quantnet.ai/personalpage/homepage" target="_self">My
              account</a></li>
            <li><span>Log out</span></li>
          </ul>
        </div>
      </div>
    </div>
    <div v-else class="top_header">
      <div class="logoWrapper"><a class="logo" href="/">Home</a></div>
      <nav class="dropdownmenu">
        <ul>
          <li><a class="nav-link" target="_self" href="/contest">О нас</a></li>
          <li><a class="nav-link" target="_self" href="/learn">Обучение</a></li>
          <li><a class="nav-link" target="_self" href="/events">Мероприятия</a></li>
          <li><a class="nav-link" rel="noopener noreferrer" href="/contacts" target="_self">Контакты</a></li>
          <li><a class="nav-link" target="_self" href="/faq">FAQ</a></li>
        </ul>
      </nav>
      <div class="headerWrapper">
        <div id="wrapper"><label id="nav-icon3" class="menu-icon"
                                 for="toggle"><span></span><span></span><span></span><span></span></label><input
            type="checkbox" id="toggle">
          <nav>
            <ul>
              <li><a class="nav-link" href="/contest" target="_self">О нас</a></li>
              <li><a class="nav-link" href="/learn" target="_self">Обучение</a></li>
              <li><a class="nav-link" href="/events" target="_self">Мероприятия</a></li>
              <li><a class="nav-link" rel="noopener noreferrer" href="/contacts" target="_self">Контакты</a></li>
              <li><a class="nav-link" href="/faq" target="_self">FAQ</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="langWrapper" style="display: flex; justify-content: space-between; align-items: center;">
        <div class="ru languagePickerWrapper">
          <ul style="color: white;">
            <li class="ru"><a :href="urlRU">RU</a></li>
            <li class="en"><a :href="urlEN">EN</a></li>
          </ul>
        </div>
        <a class="myAccountLink" rel="noopener noreferrer" href="https://quantnet.ai/personalpage/login"
           target="_self" style="display: block;">Вход</a>
        <div class="usernameLinkWrapper" style="display: none;"><span class="usernameLink"></span><span
            class="usernameIcon"><svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="user"
                                      class="svg-inline--fa fa-user fa-w-14 fa-fw fa-sm " role="img"
                                      xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"><path
            fill="currentColor"
            d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"></path></svg></span><span
            class="chevron"></span>
          <ul>
            <li class="usernameHeader"><span style="color: rgb(214, 109, 54);"></span></li>
            <li><a rel="noopener noreferrer" href="https://quantnet.ai/personalpage/homepage" target="_self">Мой
              аккаунт</a></li>
            <li><span>Выйти</span></li>
          </ul>
        </div>
      </div>
    </div>

    <!--   <img -->
    <!--     class="logo" -->
    <!--     v-if="$site.themeConfig.logo" -->
    <!--     :src="$withBase($site.themeConfig.logo)" -->
    <!--     :alt="$siteTitle" -->
    <!--   > -->
    <!--   <span -->
    <!--     class="site-name" -->
    <!--     v-if="$siteTitle" -->
    <!--     :class="{ 'can-hide': $site.themeConfig.logo }" -->
    <!--   >{{ $siteTitle }}</span> -->
    <!-- </router-link> -->

    <!--     <div class="links">-->
    <!--       <AlgoliaSearchBox-->
    <!--         v-if="isAlgoliaSearch"-->
    <!--         :options="algolia"-->
    <!--       />-->
    <!--       <SearchBox v-else-if="$site.themeConfig.search !== false"/>-->
    <!--     </div>-->
    <!--    <search-box></search-box>-->
  </header>
</template>

<script>
import SidebarButton from './vuepress/SidebarButton.vue'
// import AlgoliaSearchBox from '@AlgoliaSearchBox'
// import SearchBox from './vuepress/SearchBox.vue'
// import NavLinks from './NavLinks.vue'
import LocaleHelper from "./LocaleHelper";

export default {
  components: {SidebarButton},// NavLinks, SearchBox, AlgoliaSearchBox},
  computed: {
    isEnVersion() {
      return LocaleHelper.getCurrentLocale() === 'en';
    },
    currentYear() {
      return new Date().getFullYear();
    },
    urlRU() {
      return LocaleHelper.getUrlRU();
    },
    urlEN() {
      return LocaleHelper.getUrlEN();
    }
  }

  // computed: {
  //   algolia () {
  //     return this.$themeLocaleConfig.algolia || this.$site.themeConfig.algolia || {}
  //   },
  //
  //   isAlgoliaSearch () {
  //     return this.algolia && this.algolia.apiKey && this.algolia.indexName
  //   }
  // }
}
</script>
<style lang="scss">
.main-container {
  //padding-left: 4%;
}

@-webkit-keyframes fade-in {
  0% {
    opacity: 0.1;
  }
  100% {
    opacity: 1;
  }
}

@-moz-keyframes fade-in {
  0% {
    opacity: 0.1;
  }
  100% {
    opacity: 1;
  }
}

@-o-keyframes fade-in {
  0% {
    opacity: 0.1;
  }
  100% {
    opacity: 1;
  }
}

@keyframes fade-in {
  0% {
    opacity: 0.1;
  }
  100% {
    opacity: 1;
  }
}

@import url('https://fonts.googleapis.com/css?family=Roboto:400,700');
@import url('https://fonts.googleapis.com/css?family=Oswald');
@import url('https://fonts.googleapis.com/css?family=Merriweather:300|Montserrat+Alternates:400,600,700,800&display=swap&subset=cyrillic');
@import url('https://fonts.googleapis.com/css?family=Montserrat:700|PT+Sans:700|Rubik:700,900|Source+Sans+Pro:400,700|Ubuntu:700&display=swap');

@font-face {
  font-family: 'Gotham Pro Light';
  src: url("./static/GothamPro-Light.eot");
  src: url("./static/GothamPro-Light.ttf");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'Gotham Pro Regular';
  src: url("./static/GothamPro.eot");
  src: url("./static/GothamPro.ttf");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'Gotham Pro Medium';
  src: url("./static/GothamPro-Medium.eot");
  src: url("./static/GothamPro-Medium.ttf");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'Gotham Pro Bold';
  src: url("./static/GothamPro-Bold.eot");
  src: url("./static/GothamPro-Bold.ttf");
  font-weight: normal;
  font-style: normal;
}

#app, body, html {
  height: 100%;
}

body {
  overflow-x: hidden;
  margin: 0;
  background-color: #fff;
}

body, html {
  height: 100%;
}

body {
  overflow-y: scroll;
}

#app {
  display: flex;
  flex-direction: column;
  height: 100%;
  justify-content: space-between;
}

* {
  font-family: "Source Sans Pro", "Helvetica Neue", Arial, sans-serif;;
  color: #666;
}

// Main colors
$light_main_color: #ffffff;
$dark_main_color: #020202;
//$dark_main_color:#0d3c55;
$middle_main_color: #f0f5f7;
$light_border: #cccccc;
$contrast_color: #d66d36;
//$contrast_color:#f16c20;
$additional_color: #1395ba;

$dark_font_color: #333333;
$middle_font_color: #666666;
$light_font_color: #999999;
$accent_color: #ff6666;
$accent_dark: #223c55;

//Fonts

$average_font: "Gotham Pro Regular";
$bold_font: "Gotham Pro Bold";
$header_font: 'Gotham Pro Medium';
$light_font: 'Gotham Pro Light';


header {
  width: 100%;
  position: fixed;
  top: 0;
  background-color: $dark_main_color;
  z-index: 10;
}

.top_header {

  padding: 10px 0;
  line-height: 30px;
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  background-color: $dark_main_color;
  max-width: 1180px;
  margin: 0 auto;

  .logoWrapper {
    width: 25%;

    .logo {
      color: $light_main_color;
      display: inline-block;
      font-size: 2em;
      //padding-top: 10px;
      text-align: left;
      position: relative;
      background: url("static/img/logopng.png") no-repeat;
      background-size: contain;
      width: 149px;
      text-indent: -9999px;
    }
  }

  .dropdownmenu {
    width: 55%;
    display: flex;
    vertical-align: middle;
    justify-content: space-between;

    ul,
    li {
      margin: 0;
      padding: 0;
    }

    ul {
      list-style: none;
      width: 100%;
      display: flex;
      justify-content: space-around;
    }

    li {
      float: left;
      position: relative;
      width: auto;

      .dropdown-item {
        color: $middle_main_color;
      }
    }

    a {
      background: inherit;
      color: $light_main_color;
      display: block;
      font-family: $header_font;
      padding: 0;
      text-align: center;
      text-decoration: none;
      font-size: 14px;
      -webkit-transition: all 0.25s ease;
      -moz-transition: all 0.25s ease;
      -ms-transition: all 0.25s ease;
      -o-transition: all 0.25s ease;
      transition: all 0.25s ease;
      white-space: nowrap;
    }

    li:hover {
      .nav-link {
        color: $light_font_color;
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

  .headerWrapper {
    text-align: right;
    display: block;
    position: absolute;
    left: 40px;
    padding: 0;

    .mobileToggle {
      margin-top: 10px;
      font-family: $average_font;
      color: $light_main_color;
      text-transform: uppercase;
      font-weight: bold;
      border-radius: 5px;
      padding: 10px;
      padding-right: 45px;

      &:hover {
        color: $contrast_color;
      }
    }

    #toggle {
      display: none;

      &:not(:checked) + nav {
        width: 0;
        overflow: hidden;
      }

      &:checked + nav {
        width: 300px;
        overflow: visible;
      }

      &:checked + nav li {
        opacity: 1;
      }
    }

    nav {
      position: fixed;
      top: 50px;
      background: $dark_main_color;
      left: 0;
      z-index: 10;
      transition: 0.5s;
      height: calc(100vh - 50px);
      width: 300px;

      ul {
        padding: 0;
      }

      li {
        opacity: 0;
        transition: opacity 0.4s ease;
        list-style-type: none;
      }

      .nav-link {
        background: inherit;
        color: #ffffff;
        display: block;
        font-family: $header_font;
        padding: 10px 25px;
        text-align: left;
        text-transform: uppercase;
        text-decoration: none;
        font-size: 14px;
        -webkit-transition: all 0.25s ease;
        height: 50px;
        line-height: 50px;
        padding-left: 50px;
        border-bottom: 1px solid #383838;
        padding-bottom: 20px;
        padding-top: 0;

        &:hover {
          color: $light_font_color;
        }
      }

      .submenu {
        width: fit-content;

        li {
          list-style-type: none;
          justify-content: center;

          a {
            background: inherit;
            color: $light_font_color;
            display: block;
            font-family: "Roboto", sans-serif;
            padding: 10px 5px;
            text-align: left;
            text-transform: uppercase;
            text-decoration: none;
            font-size: 0.7em;
            font-weight: bold;
            -webkit-transition: all 0.25s ease;
            transition: all 0.25s ease;
          }
        }
      }

      .soc_buttons {
        justify-content: center;
      }
    }

    /* menu icon */

    .menu-icon {
      cursor: pointer;
      float: right;
      padding: 0;
      user-select: none;

      .navicon {
        background: $light_main_color;
        display: block;
        height: 2px;
        position: relative;
        transition: background 0.2s ease-out;
        width: 18px;

        &:before,
        &:after {
          content: "";
          display: block;
          height: 100%;
          width: 100%;
          position: absolute;
          background: $light_main_color;
          transition: all 0.2s ease-out;
        }

        &:before {
          top: 5px;
        }

        &:after {
          top: -5px;
        }
      }
    }

    #nav-icon1, #nav-icon2, #nav-icon3, #nav-icon4 {
      width: 30px;
      height: 20px;
      margin-top: 5px;
      position: relative;
      -webkit-transform: rotate(0deg);
      -moz-transform: rotate(0deg);
      -o-transform: rotate(0deg);
      transform: rotate(0deg);
      -webkit-transition: .5s ease-in-out;
      -moz-transition: .5s ease-in-out;
      -o-transition: .5s ease-in-out;
      transition: .5s ease-in-out;
      cursor: pointer;
    }

    #nav-icon1 span, #nav-icon3 span, #nav-icon4 span {
      display: block;
      position: absolute;
      height: 3px;
      width: 100%;
      background: $light_main_color;
      border-radius: 9px;
      opacity: 1;
      left: 0;
      -webkit-transform: rotate(0deg);
      -moz-transform: rotate(0deg);
      -o-transform: rotate(0deg);
      transform: rotate(0deg);
      -webkit-transition: .25s ease-in-out;
      -moz-transition: .25s ease-in-out;
      -o-transition: .25s ease-in-out;
      transition: .25s ease-in-out;
    }


    /* Icon 3 */

    #nav-icon3 span:nth-child(1) {
      top: 0px;
    }

    #nav-icon3:hover {
      span {
        background: $light_font_color;
      }
    }

    #nav-icon3 span:nth-child(2), #nav-icon3 span:nth-child(3) {
      top: 9px;
    }

    #nav-icon3 span:nth-child(4) {
      top: 18px;
    }

    #nav-icon3.open span:nth-child(1) {
      top: 9px;
      width: 0%;
      left: 50%;
    }

    #nav-icon3.open span:nth-child(2) {
      -webkit-transform: rotate(45deg);
      -moz-transform: rotate(45deg);
      -o-transform: rotate(45deg);
      transform: rotate(45deg);
    }

    #nav-icon3.open span:nth-child(3) {
      -webkit-transform: rotate(-45deg);
      -moz-transform: rotate(-45deg);
      -o-transform: rotate(-45deg);
      transform: rotate(-45deg);
    }

    #nav-icon3.open span:nth-child(4) {
      top: 9px;
      width: 0%;
      left: 50%;
    }

  }

  .langWrapper {
    min-width: 80px;
    max-width: 150px;

    .myAccountLink {
      color: $light_main_color;
      cursor: pointer;
      text-decoration: none;
      font-family: $header_font;
      font-size: 14px;
      transition: all 300ms ease-in;
      margin-left: 20px;
      white-space: nowrap;

      &:hover {
        color: $light_font_color;
      }
    }

    .languagePickerWrapper {
      position: relative;
      width: 40px;
      height: 30px;
      color: $light_main_color;
      padding-left: 5px;

      a {
        color: white;
        font-family: $header_font;
      }

      &::before {
        position: absolute;
        left: -5px;
        top: 50%;
        content: '';
        width: 0;
        height: 0;
        border-left: 4px solid transparent;
        border-right: 4px solid transparent;
        border-top: 4px solid $light_main_color;
        display: inline-block;
        vertical-align: middle;
        margin-right: 5px;

      }

      &.ru {
        ul {
          display: flex;
          flex-direction: column;

          li:first-child {
            order: 1;
          }

          li:nth-child(2) {
            order: 2;
          }

          li.ru {
            visibility: visible !important;
          }
        }
      }

      &.en {
        ul {
          display: flex;
          flex-direction: column;

          li:first-child {

            order: 2;
          }

          li:nth-child(2) {
            order: 1;
          }

          li.en {
            visibility: visible !important;
          }
        }
      }

      &:hover {
        &::before {
          border-top: 4px solid $light_font_color;
        }

        li {
          visibility: visible !important;
        }
      }

      ul {
        color: white;
        margin: 0;
        padding: 0;
        align-items: center;


        &:hover {
          background-color: $dark_main_color;
        }

        li {
          cursor: pointer;
          list-style-type: none;
          font-family: $header_font;
          color: white;
          visibility: hidden;
          font-size: 14px;

          &:hover {
            color: $light_font_color;
          }

          &.ru {
            //background: url("../img/languageIcons/iconfinderRussia.png");
            background-size: contain;
          }

          &.en {
            //background: url("../img/languageIcons/iconfinderUK.png");
            background-size: contain;
          }
        }
      }
    }

    .usernameLinkWrapper {
      background: $dark_main_color;
      align-items: center;
      position: relative;
      transition: all ease-in 300ms;

      .usernameHeader {
        display: none;
      }

      &:hover {
        .chevron {
          color: $light_main_color;
          cursor: pointer;
          width: 20px;

          &::after {
            position: absolute;
            right: 0;
            top: 30%;
            content: '';
            width: 0;
            height: 0;
            border-left: 4px solid transparent;
            border-right: 4px solid transparent;
            border-bottom: 4px solid $light_main_color;
            border-top: 4px solid transparent;
            display: inline-block;
            vertical-align: middle;
            margin-right: 5px;
            pointer-events: none;
          }
        }

        ul {
          z-index: 1000;
          display: block;
          position: absolute;
          background-color: $dark_main_color;
          color: $light_main_color;
          padding: 10px 5px;
          width: 150px;
          top: 30px;
          right: -20px;
          padding-left: 10px;

          li {
            list-style-type: none;
            margin: 5px;
            cursor: pointer;
            font-family: $header_font;
            text-align: center;

            a, span {
              color: $light_main_color;
              font-family: $header_font;
              text-decoration: none;
              font-size: 14px;
            }

            &:hover {
              color: $light_font_color;

              a, span {
                color: $light_font_color;
              }
            }
          }
        }
      }

      .usernameLink {
        color: $light_main_color;
        cursor: pointer;
        padding: 0 10px;
        width: fit-content;
        max-width: 150px;
        text-decoration: none;
        font-family: $average_font;
        margin-left: 10px;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
        padding-right: 0;
      }

      .usernameIcon {
        display: none;
      }

      .chevron {
        color: $light_main_color;
        cursor: pointer;
        width: 20px;

        &::after {
          position: absolute;
          right: 0;
          top: 50%;
          content: '';
          width: 0;
          height: 0;
          border-left: 4px solid transparent;
          border-right: 4px solid transparent;
          border-top: 4px solid $light_main_color;
          display: inline-block;
          vertical-align: middle;
          margin-right: 5px;

        }
      }

      ul {
        display: none;
      }
    }
  }

  .languageSelect {
    font-family: $average_font;
    font-weight: bold;
    font-size: 1em;
    border: none;
    height: fit-content;
    width: 50px;
  }

  .soc_buttons {
    //border-left: 1px solid $dark_font_color;
    display: flex;
    margin-top: 30px;

    a {
      //font-size: 16px;
      //margin-left: 8px;
      padding-top: 0;
      color: $light_main_color;
      text-decoration: none;
      margin-right: 20px;

      &:hover {
        .fa {
          color: $contrast_color;
        }
      }
    }

    .soc_buttons_vk,
    .soc_buttons_fb,
    .soc_buttons_in,
    .soc_buttons_tg,
    .soc_buttons_zen {
      height: 20px;
      width: 20px;
      padding: 0;
      //background: url("../img/soc_icons.png");
      background-repeat: no-repeat;
      display: inline-block;

      &:hover {
        opacity: 0.7;
      }
    }

    .soc_buttons_vk {
      background-position: -41px -9px;
    }

    .soc_buttons_fb {
      background-position: -74px -11px;
    }

    .soc_buttons_in {
      background-position: -75px -44px;
    }

    .soc_buttons_tg {
      background-position: -41px -43px;
    }

    .soc_buttons_zen {
      background-position: -9px -42px;
    }
  }

  .header_topline {
    background-color: $light_main_color;
    padding: 0;
    color: $dark_main_color;
    position: relative;
  }
}


/* menu */

.menu {
  clear: both;
  max-height: 0;
  transition: max-height 0.2s ease-out;
}

/* menu btn */

.menu-btn {
  display: none;

  &:checked ~ .menu {
    max-height: 240px;
  }

  &:checked ~ .menu-icon .navicon {
    background: transparent;
  }

  &:checked ~ .menu-icon .navicon:before {
    transform: rotate(-45deg);
  }

  &:checked ~ .menu-icon .navicon:after {
    transform: rotate(45deg);
  }

  &:checked ~ .menu-icon:not(.steps) .navicon:before,
  &:checked ~ .menu-icon:not(.steps) .navicon:after {
    top: 0;
  }


}

@media (max-width: 1200px) {
  .top_header {
    padding: 10px 0px;
    width: 80%;
  }
  .usernameLink {
    display: none;
  }
  .usernameHeader {
    display: block !important;

    span {
      color: $contrast_color;
      word-break: break-word;
    }
  }
  .usernameIcon {
    display: block !important;
    padding-bottom: 3px;

    path {
      color: $light_main_color !important;
    }
  }

}


@media only screen and (min-width: 768px) {
  .top_header {
    .headerWrapper {
      display: none;
    }

    .langWrapper {
      width: 20%;
    }

    .dropdownmenu,
    .myAccountLink {
      display: block;
      max-width: 100%;
    }
  }
}


@media only screen and (max-width: 768px) {
  .dropdownmenu {
    display: none !important;
  }

  .headerWrapper {
    display: block !important;
  }
  .top_header {
    padding: 10px 30px;
    //position: fixed;
    top: 0;
    //width: 100%;

    .logoWrapper {
      width: 80%;
      text-align: center;
      padding-left: 20%;
    }

    .languagePickerWrapper {
      width: 25px;

      &::before {
        display: none !important;

      }
    }

    .myAccountLink {
      margin-left: 0 !important;
    }
  }
}

@media only screen and (max-width: 400px) {
  .logoWrapper {
    width: 60% !important;
    text-align: center;
    padding-left: calc(50% - 30px) !important;

    .logo {
      min-width: 30px !important;
      max-width: 30px !important;
      background-size: cover !important;
    }
  }
  .languagePickerWrapper {
    width: 40px !important;
  }

}
</style>

<!--<style>-->
<!--app, body, html {-->
<!--  height: 100%;-->
<!--}-->

<!--body {-->
<!--  overflow-x: hidden;-->
<!--  margin: 0;-->
<!--  background-color: #ffffff;-->
<!--}-->

<!--body {-->
<!--  overflow-y: scroll;-->
<!--}-->

<!--* {-->
<!--  margin: 0;-->
<!--  padding: 0;-->
<!--  box-sizing: border-box;-->
<!--  font-family: "Gotham Pro Regular";-->
<!--  color: #666;-->
<!--  font-weight: 400;-->
<!--}-->

<!--.top_header, header {-->
<!--  background-color: #020202;-->
<!--}-->

<!--header {-->
<!--  width: 100%;-->
<!--  position: fixed;-->
<!--  top: 0;-->
<!--  z-index: 10;-->
<!--}-->

<!--@media (max-width: 1200px) {-->
<!--  .top_header {-->
<!--    padding: 10px 0;-->
<!--    width: 80%;-->
<!--  }-->

<!--  .top_header {-->
<!--    padding: 10px 0;-->
<!--    line-height: 30px;-->
<!--    display: flex;-->
<!--    justify-content: space-between;-->
<!--    align-items: flex-start;-->
<!--    max-width: 1180px;-->
<!--    margin: 0 auto;-->
<!--  }-->
<!--}-->


<!--.top_header .dropdownmenu {-->
<!--  width: 55%;-->
<!--  display: flex;-->
<!--  vertical-align: middle;-->
<!--  justify-content: space-between;-->
<!--}-->

<!--.top_header .headerWrapper {-->
<!--  text-align: right;-->
<!--  display: block;-->
<!--  position: absolute;-->
<!--  left: 40px;-->
<!--  padding: 0;-->
<!--}-->

<!--.top_header .langWrapper {-->
<!--  min-width: 80px;-->
<!--  max-width: 150px;-->
<!--}-->

<!--@media only screen and (max-width: 768px) {-->
<!--  .top_header {-->
<!--    padding: 10px 30px;-->
<!--    position: fixed;-->
<!--    top: 0;-->
<!--    width: 100%;-->
<!--  }-->

<!--  .top_header .logoWrapper {-->
<!--    width: 80%;-->
<!--    text-align: center;-->
<!--    padding-left: 20%;-->
<!--  }-->

<!--  .top_header .logoWrapper {-->
<!--    width: 25%;-->
<!--  }-->

<!--  .dropdownmenu {-->
<!--    display: none !important;-->
<!--  }-->

<!--  .headerWrapper {-->
<!--    display: block !important;-->
<!--  }-->
<!--}-->

<!--</style>-->
