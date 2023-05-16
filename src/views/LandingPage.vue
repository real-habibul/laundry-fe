<template>
  <div class="bg-gray-100 min-h-screen">
    <nav class="bg-white shadow">
      <!-- Navigation bar content -->
    </nav>
    <header class="py-10 bg-gray-900">
      <div class="container mx-auto text-center">
        <h1 class="text-4xl font-semibold text-white">Welcome to Our Laundry Service</h1>
        <p class="mt-4 text-lg text-gray-300">We take care of your laundry needs</p>
        <button class="px-6 py-3 mt-8 text-lg font-semibold text-white bg-blue-500 rounded-md hover:bg-blue-600">
          Get Started
        </button>
      </div>
    </header>

    <main class="py-16">
      <div class="container mx-auto">
        <h2 class="text-2xl font-semibold text-center">Our Services</h2>

        <div class="mt-12 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <!-- Service cards -->
          <div class="bg-white shadow rounded-lg p-6">
            <h3 class="text-lg font-semibold">Wash & Fold</h3>
            <p class="mt-4 text-gray-600">We'll wash and fold your clothes with care.</p>
          </div>

          <div class="bg-white shadow rounded-lg p-6">
            <h3 class="text-lg font-semibold">Dry Cleaning</h3>
            <p class="mt-4 text-gray-600">Professional dry cleaning for your delicate garments.</p>
          </div>

          <div class="bg-white shadow rounded-lg p-6">
            <h3 class="text-lg font-semibold">Ironing</h3>
            <p class="mt-4 text-gray-600">We'll iron your clothes to perfection.</p>
          </div>
        </div>
      </div>
    </main>

    <footer class="bg-gray-800 py-8 mt-16">
      <div class="container mx-auto text-center">
        <p class="text-gray-400">&copy; 2023 Laundry Service. All rights reserved.</p>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'LandingPage',
};
</script>

<style>
/* Add Tailwind CSS classes here */
</style>
