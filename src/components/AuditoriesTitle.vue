<template>
<header>
  <div class="content"></div>
  <h1 class="title">{{ title }}</h1>
  <h3 class="description">{{ des }}</h3>
</header>
</template>

<script setup>
defineProps({
  title: {
    type: String,
    required: true
  },
  des: {
    type: String,
    required: true
  }
})
</script>

<style scoped>

</style>