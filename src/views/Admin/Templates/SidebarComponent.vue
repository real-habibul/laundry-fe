<!--
TODO
  1. Add Logo in the top section
  2. Customize the icons and list menu
-->
<template>
  <aside class="hidden md:block bg-gray-900 text-gray-500 flex flex-col relative">
    <!-- Sidebar content here -->
    <nav class="flex flex-col flex-grow py-4">
      <a href="#" class="flex items-center py-2 px-6">
        <svg class="h-6 w-6 text-gray-300 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
        </svg>
        Dashboard
      </a>
      <a href="#" class="flex items-center py-2 px-6">
        <svg class="h-6 w-6 text-gray-300 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
        </svg>
        Products
      </a>
      <a href="#" class="flex items-center py-2 px-6">
        <svg class="h-6 w-6 text-gray-300 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 20l4-16m2 16l4-16M6 9h14M4 15h14"></path>
        </svg>
        Payments
      </a>
      <a href="#" class="flex items-center py-2 px-6">
        <svg class="h-6 w-6 text-gray-300 mr-2" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
        </svg>
        Logout
      </a>
    </nav>
    <div class="absolute bottom-0 text-gray-400 text-center text-xs w-full">
      <p>&copy; 2023. All rights reserved</p>
      <p class="pb-3" >Ahmad Habibul Ulum</p>
    </div>
  </aside>
</template>

<script>
export default {
  // Component logic here...
}
</script>

<style>
aside {
  height: 100vh;
}
</style>
