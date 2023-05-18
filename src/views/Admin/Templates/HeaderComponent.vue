<template>
  <header class="bg-gray-50 p-4 flex items-center justify-between">
    <!-- Left section -->
    <div class="flex items-center">
      <div class="mr-4">
        <!-- Search bar -->
        <input
          type="text"
          class="rounded-lg py-2 px-4 bg-blue-50 focus:outline-none focus:ring-2 focus:ring-blue-500 border-2 "
          placeholder="Search..."
        />
      </div>
    </div>

    <!-- Right section -->
    <div class="flex items-center">
      <div class="relative">
        <!-- Notification icon -->
        <button @click="toggleNotification" class="p-2 rounded-full text-gray-500 hover:text-gray-700">
          <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"
            ></path>
          </svg>
          <!-- Notification count badge -->
          <div
            class="absolute top-0 right-0 -mt-1 -mr-1 bg-red-500 rounded-full w-4 h-4 flex items-center justify-center text-xs text-white"
          >
            3 <!-- Replace with the actual notification count -->
          </div>
        </button>

        <!-- Notification dropdown -->
        <div v-if="showNotification" class="absolute right-0 mt-2 w-48 bg-white shadow-lg rounded-md z-10">
          <div class="py-2">
            <!-- Recent notifications -->
            <div v-for="notification in notifications" :key="notification.id" class="px-4 py-2 hover:bg-gray-100">
              <!-- Replace with actual notification content -->
              {{ notification.content }}
            </div>
          </div>
        </div>
      </div>

      <!-- Vertical Divider -->
      <div class="border-l border-gray-300 h-10 ml-4"></div>

      <!-- User information -->
      <div class="ml-4">
        <div class="flex items-center">
          <img
            class="w-8 h-8 rounded-full object-cover"
            src="./user-photo.png"
          alt="User Photo"
          />
          <div class="ml-2">
            <div class="font-medium">{{ user.name }}</div>
            <div class="text-gray-500 text-sm">{{ user.role }}</div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  data() {
    return {
      showNotification: false,
      notifications: [
        { id: 1, content: 'Notification 1' },
        { id: 2, content: 'Notification 2' },
        { id: 3, content: 'Notification 3' },
      ],
      user: {
        name: 'John Doe', // Replace with the actual user's name
        role: 'Admin', // Replace with the actual user's role
      },
    };
  },
  methods: {
    toggleNotification() {
      this.showNotification = !this.showNotification;
    },
  },
};
</script>
