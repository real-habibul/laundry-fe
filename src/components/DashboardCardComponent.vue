<template>
  <div class="bg-white shadow-md rounded-lg p-4">
    <table class="w-full table-auto">
      <tr>
        <td class="w-1/3">
          <div :class="`flex justify-center rounded-2xl bg-${iconColor}-50`">
            <slot name="icon" />
          </div>
        </td>
        <td colspan="2" class="w-1/3 pl-2">
          <div class="relative h-32 w-100 text-center">
            <div class="text-xl text-gray-500 tracking-wider inset-x-0 top-0 h-12">{{ title }}</div>
            <div class="text-4xl font-semibold text-gray-700 inset-x-0 bottom-0 h-20">{{ value }}</div>
          </div>
        </td>
      </tr>
      <tr>
        <td class="w-1/3 text-xs text-gray-500 text-center mt-4">
          <label>Previous</label>
          <div class="text-lg text-black font-semibold">{{ previousValue }}</div>
        </td>
        <td class="w-1/3 text-xs text-gray-500 text-center mt-4">
          <label>%Change</label>
          <div class="text-lg text-black font-semibold">{{ changePercentage }}</div>
        </td>
        <td class="text-gray-500 items-center mt-4">
          <div class="flex justify-center items-center font-semibold text-green-500">
            <label class="mr-1">Trend</label>
            <slot name="trendIcon" />
          </div>
        </td>
      </tr>
    </table>
  </div>
</template>

<script setup>
import { defineProps } from 'vue';

// eslint-disable-next-line no-unused-vars
const props = defineProps({
  title: { type: String, required: true },
  value: { type: String, required: true },
  previousValue: { type: String, required: true },
  changePercentage: { type: String, required: true },
  iconColor: { type: String, required: true },
});
</script>
