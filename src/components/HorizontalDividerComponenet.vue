<template>
  <div class="flex items-center justify-center">
    <div class="border-2 border-gray-300 w-full"></div>
    <div class="px-3 text-gray-500 whitespace-nowrap">{{ title ? title : 'HORIZONTAL DIVIDER' }}</div>
    <div class="border-2 border-gray-300 w-full"></div>
  </div>
</template>

<script setup>
// eslint-disable-next-line no-unused-vars
const props = defineProps({
  title: {
    type: String,
    required: true,
  },
});
</script>