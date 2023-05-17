<!--
TODO
  1. Modify the card to display
  2. Make the cards become shared components
  3. Add more cards (Gross Profit, Cust. Satisfaction)
-->
<template>
  <main class="flex-1 p-4 bg-gray-100">
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
      <!-- Revenue card -->
      <div class="bg-white shadow-md rounded-lg p-4">
        <div class="flex flex-row items-center">
          <div class="flex justify-center basis-1/3 mr-4 rounded-xl">
            <svg class="h-12 w-12 text-blue-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="1" d="M12 6v6m0 0v6m0-6h6m-6 0H6"></path>
            </svg>
          </div>
          <div class="basis-2/3 pl-2">
            <div class="text-sm text-gray-500">Revenue</div>
            <div class="text-xl font-semibold">2,500,000</div>
            <div class="text-sm text-gray-500 flex items-center">
              <span class="text-green-500 mr-1">+25%</span>
              <svg class="h-4 w-4 text-green-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"></path>
              </svg>
            </div>
            <div class="text-xs text-gray-500">Previous: 2,000,000</div>
          </div>
        </div>
        <div class="mt-4 text-xs text-gray-500">
          <div>Trends:</div>
          <div class="flex items-center">
            <svg class="h-4 w-4 text-green-500 mr-1" fill="currentColor" viewBox="0 0 20 20">
              <path
                fill-rule="evenodd"
                d="M6.707 10.707a1 1 0 010 1.414l-2 2A1 1 0 013 13V7a1 1 0 011.707-.707l2 2zM15 7a1 1 0 01.707.293l2 2a1 1 0 010 1.414l-2 2A1 1 0 0115 13V7zm-4 4a1 1 0 00-1.707.707l-2 2A1 1 0 009 17v-6a1 1 0 00-1.707-.707l-2-2A1 1 0 004 9h6z"
                clip-rule="evenodd"
              ></path>
            </svg>
            <span class="text-green-500">Upward</span>
          </div>
        </div>
      </div>

      <!-- New Customers card -->
      <div class="bg-white shadow-md rounded-lg p-4">
        <div class="flex  items-center">
          <div class="flex-shrink-0 mr-4">
            <svg class="h-6 w-6 text-purple-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 13a3 3 0 11-6 0 3 3 0 016 0z"></path>
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 8a4 4 0 00-4-4V2m4 4V2m0 0V2H5v2m0 0v4a4 4 0 004 4h2a6 6 0 006-6z"></path>
            </svg>
          </div>
          <div>
            <div class="text-sm text-gray-500">New Customers</div>
            <div class="text-xl font-semibold">1,500</div>
            <div class="text-sm text-gray-500 flex items-center">
              <span class="text-red-500 mr-1">-10%</span>
              <svg class="h-4 w-4 text-red-500" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 10l7-7m0 0l7 7m-7-7v18"></path>
              </svg>
            </div>
            <div class="text-xs text-gray-500">Previous: 1,670</div>
          </div>
        </div>
        <div class="mt-4 text-xs text-gray-500">
          <div>Trends:</div>
          <div class="flex items-center">
            <svg class="h-4 w-4 text-red-500 mr-1" fill="currentColor" viewBox="0 0 20 20">
              <path fill-rule="evenodd" d="M6.707 10.707a1 1 0 010 1.414l-2 2A1 1 0 013 13V7a1 1 0 011.707-.707l2 2zM15 7a1 1 0 01.707.293l2 2a1 1 0 010 1.414l-2 2A1 1 0 0115 13V7zm-4 4a1 1 0 00-1.707.707l-2 2A1 1 0 009 17v-6a1 1 0 00-1.707-.707l-2-2A1 1 0 004 9h6z" clip-rule="evenodd"></path>
            </svg>
            <span class="text-red-500">Downward</span>
          </div>
        </div>
      </div>

    </div>
  </main>
</template>

<script>
export default {
  // Component logic here...
}
</script>

<style>
/* Component styles here... */
</style>
