<template>
  <aside class="bg-white text-gray-400 flex flex-col overflow-y-auto md:flex-row md:justify-between">
    <!-- Logo Header here -->
    <div class="flex flex-col items-center justify-center my-2 mt-4 h-16 md:h-auto md:my-0">
      <img class="h-8 w-8" src="../../../assets/user-photo.png" alt="Logo" />
      <!-- label for logo here, make it aesthetic-->
      <span class="mt-1 font-semibold text-black">Laundry Xpress</span>
    </div>
    <nav class="flex flex-col flex-grow py-4 px-4 md:flex-row md:py-0">
      <a href="#" class="flex items-center py-2 px-6 rounded-3xl bg-green-100 text-green-500 font-semibold md:mr-4">
        <div class="animate-spin mr-2">
          <LifebuoyIcon class="h-6 w-6" />
        </div>
        Dashboard
      </a>
      <a href="#" class="flex items-center py-2 px-6">
        <svg class="h-6 w-6 text-gray-300 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
        </svg>
        Logout
      </a>
    </nav>
  </aside>
</template>

<script setup>
import { LifebuoyIcon } from "@heroicons/vue/24/outline";
</script>

<style>
aside {
  height: calc(100vh - 50px); /* Adjust the height based on your footer height */
}
</style>
