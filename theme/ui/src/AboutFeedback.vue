<template>
  <div>
    {{ messageUser }}
    <a :href=githubUrl target="_blank">
      {{ messageEditGitHub }}
    </a>
  </div>
</template>

<script>
import LocaleHelper from "./LocaleHelper";

export default {
  computed: {
    githubUrl() {
      const baseUrl = 'https://github.com/qntnet/documentation';
      const locale = LocaleHelper.getCurrentLocale();
      const repositoryFile = '/tree/master/' + locale;
      return baseUrl + repositoryFile;
    },
    messageUser() {
      if (LocaleHelper.getCurrentLocale() === 'en') {
        return 'Caught a mistake or want to contribute to the documentation?';
      }
      return 'Обнаружили ошибку или хотите добавить что-то своё в документацию?';
    },
    messageEditGitHub() {
      if (LocaleHelper.getCurrentLocale() === 'en') {
        return 'Edit this on GitHub!';
      }
      return 'Изменить эту страницу на GitHub!';
    }
  }
}

</script>

<style lang="stylus">
</style>
