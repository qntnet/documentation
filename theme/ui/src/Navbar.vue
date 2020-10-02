<template>
  <header>
    <div v-if="isEnVersion" class="top_header">
      <div class="logoWrapper"><a class="logo" href="/">Home</a></div>
      <nav class="dropdownmenu">
        <ul>
          <li><a class="nav-link" target="_self" href="/contest">About</a></li>
          <li><a class="nav-link" target="_self" :href=urlDocumentation>Documentation</a></li>
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
              <li><a class="nav-link" :href=urlDocumentation target="_self">Documentation</a></li>
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
          <li><a class="nav-link" target="_self" href="/contest">О конкурсе</a></li>
          <li><a class="nav-link" target="_self" :href=urlDocumentation>Документация</a></li>
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
              <li><a class="nav-link" href="/contest" target="_self">О конкурсе</a></li>
              <li><a class="nav-link" :href=urlDocumentation target="_self">Документация</a></li>
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
import LocaleHelper from "./LocaleHelper";

export default {
  components: {SidebarButton},
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
    },
    urlDocumentation() {
      const currentLocale = LocaleHelper.getCurrentLocale();
      return `/documentation/${currentLocale}/`;
    }
  }
}
</script>
<style lang="stylus">
@require './vuepress/styles/config';
// Main colors
$light_main_color = #ffffff;
$dark_main_color = #020202;
$middle_main_color = #f0f5f7;
$light_border = #cccccc;
$contrast_color = #d66d36;
$additional_color = #1395ba;

$light_font_color = #999999;


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
      background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABbCAYAAACF63cFAAABN2lDQ1BBZG9iZSBSR0IgKDE5OTgpAAAokZWPv0rDUBSHvxtFxaFWCOLgcCdRUGzVwYxJW4ogWKtDkq1JQ5ViEm6uf/oQjm4dXNx9AidHwUHxCXwDxamDQ4QMBYvf9J3fORzOAaNi152GUYbzWKt205Gu58vZF2aYAoBOmKV2q3UAECdxxBjf7wiA10277jTG+38yH6ZKAyNguxtlIYgK0L/SqQYxBMygn2oQD4CpTto1EE9AqZf7G1AKcv8ASsr1fBBfgNlzPR+MOcAMcl8BTB1da4Bakg7UWe9Uy6plWdLuJkEkjweZjs4zuR+HiUoT1dFRF8jvA2AxH2w3HblWtay99X/+PRHX82Vun0cIQCw9F1lBeKEuf1UYO5PrYsdwGQ7vYXpUZLs3cLcBC7dFtlqF8hY8Dn8AwMZP/fNTP8gAAAAJcEhZcwAACxMAAAsTAQCanBgAAA1HaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzE0MiA3OS4xNjA5MjQsIDIwMTcvMDcvMTMtMDE6MDY6MzkgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6N2M4OGM1ZDgtMDQ3Yy0xMjRkLWI2OTMtNDI5NTVhYTI2ZmI5IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOmNjOWNjNzc0LTFhZWMtMDM0OC05OGZiLTlkZGYxMTJjOTlhNiIgeG1wTU06T3JpZ2luYWxEb2N1bWVudElEPSI0RUYyOUZEOUNGRUQ5MzgxRDJBQjkzQjVCMEMzNzg5OCIgZGM6Zm9ybWF0PSJpbWFnZS9wbmciIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIHBob3Rvc2hvcDpJQ0NQcm9maWxlPSJBZG9iZSBSR0IgKDE5OTgpIiB4bXA6Q3JlYXRlRGF0ZT0iMjAxOC0xMC0wN1QxNzozNToxNiswMzowMCIgeG1wOk1vZGlmeURhdGU9IjIwMTktMDctMDhUMTE6NDY6NDgrMDM6MDAiIHhtcDpNZXRhZGF0YURhdGU9IjIwMTktMDctMDhUMTE6NDY6NDgrMDM6MDAiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTggKFdpbmRvd3MpIiB0aWZmOkltYWdlV2lkdGg9IjkwMCIgdGlmZjpJbWFnZUxlbmd0aD0iNTIwIiB0aWZmOlBob3RvbWV0cmljSW50ZXJwcmV0YXRpb249IjIiIHRpZmY6T3JpZW50YXRpb249IjEiIHRpZmY6U2FtcGxlc1BlclBpeGVsPSIzIiB0aWZmOlhSZXNvbHV0aW9uPSI3MjAwMDAvMTAwMDAiIHRpZmY6WVJlc29sdXRpb249IjcyMDAwMC8xMDAwMCIgdGlmZjpSZXNvbHV0aW9uVW5pdD0iMiIgZXhpZjpFeGlmVmVyc2lvbj0iMDIyMSIgZXhpZjpDb2xvclNwYWNlPSI2NTUzNSIgZXhpZjpQaXhlbFhEaW1lbnNpb249IjI5NzQiIGV4aWY6UGl4ZWxZRGltZW5zaW9uPSI1ODgiPiA8eG1wTU06SGlzdG9yeT4gPHJkZjpTZXE+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpmMTc3OGVhMi1jNmE3LTVhNDktODFiYS00NmZjNzg5ZTZkYzAiIHN0RXZ0OndoZW49IjIwMTgtMTAtMDdUMTg6NDE6NTcrMDM6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY29udmVydGVkIiBzdEV2dDpwYXJhbWV0ZXJzPSJmcm9tIGltYWdlL2pwZWcgdG8gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iZGVyaXZlZCIgc3RFdnQ6cGFyYW1ldGVycz0iY29udmVydGVkIGZyb20gaW1hZ2UvanBlZyB0byBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo4YjU2Yzg0Yi0wZGE1LWYxNGYtYjU0OS1iMWNiOTQ0YjY3ZGUiIHN0RXZ0OndoZW49IjIwMTgtMTAtMDdUMTg6NDE6NTcrMDM6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6MzE3NWRlOGUtN2E4OC1hYzRlLTg3YTQtNjk5MDVkNzkyNTg2IiBzdEV2dDp3aGVuPSIyMDE4LTEwLTE5VDExOjMzOjE0KzAzOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgQ0MgMjAxOCAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249ImNvbnZlcnRlZCIgc3RFdnQ6cGFyYW1ldGVycz0iZnJvbSBhcHBsaWNhdGlvbi92bmQuYWRvYmUucGhvdG9zaG9wIHRvIGltYWdlL3BuZyIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iZGVyaXZlZCIgc3RFdnQ6cGFyYW1ldGVycz0iY29udmVydGVkIGZyb20gYXBwbGljYXRpb24vdm5kLmFkb2JlLnBob3Rvc2hvcCB0byBpbWFnZS9wbmciLz4gPHJkZjpsaSBzdEV2dDphY3Rpb249InNhdmVkIiBzdEV2dDppbnN0YW5jZUlEPSJ4bXAuaWlkOmNkYWE1YTk5LWQ4ODUtZWM0Zi04OWU3LTFiYzlkODQxOTNmNyIgc3RFdnQ6d2hlbj0iMjAxOC0xMC0xOVQxMTozMzoxNCswMzowMCIgc3RFdnQ6c29mdHdhcmVBZ2VudD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTggKFdpbmRvd3MpIiBzdEV2dDpjaGFuZ2VkPSIvIi8+IDxyZGY6bGkgc3RFdnQ6YWN0aW9uPSJzYXZlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDpjYzljYzc3NC0xYWVjLTAzNDgtOThmYi05ZGRmMTEyYzk5YTYiIHN0RXZ0OndoZW49IjIwMTktMDctMDhUMTE6NDY6NDgrMDM6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE4IChXaW5kb3dzKSIgc3RFdnQ6Y2hhbmdlZD0iLyIvPiA8L3JkZjpTZXE+IDwveG1wTU06SGlzdG9yeT4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MzE3NWRlOGUtN2E4OC1hYzRlLTg3YTQtNjk5MDVkNzkyNTg2IiBzdFJlZjpkb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6M2NhNGVmZDAtNjI2My1hNjQ3LTg5YzUtZjg2NmI4NDhjMTc0IiBzdFJlZjpvcmlnaW5hbERvY3VtZW50SUQ9IjRFRjI5RkQ5Q0ZFRDkzODFEMkFCOTNCNUIwQzM3ODk4Ii8+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') no-repeat;
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
    display: flex;
    margin-top: 30px;

    a {
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


/* for md style*/

</style>