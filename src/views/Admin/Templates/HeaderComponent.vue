<template>
  <!-- Logo Header here -->
  <div class="flex flex-col items-center justify-center my-2 mt-4 h-16 md:h-auto md:my-0">
    <img alt="Logo" class="h-8 w-8" src="@/assets/user-photo.png" />
    <span class="mt-1 font-semibold text-black">Laundry eXpress</span>
  </div>
  <header class="bg-gray-50 p-4 flex items-center justify-between">
    <!-- Left section -->
    <div class="flex items-center flex-shrink-0">
      <div class="mr-2 relative">
        <!-- Search bar -->
        <input
          class="rounded-3xl py-2 pl-4 md:pr-24 bg-white focus:outline-none focus:ring-2 focus:ring-green-500 border-2"
          placeholder="Search Menu..."
          type="text"
        />
        <!-- Search icon -->
        <div class="absolute top-1/2 right-3 transform -translate-y-1/2 text-gray-500">
          <MagnifyingGlassIcon class="h-6 w-6" />
        </div>
        <!-- Add a spacer to create distance between the search bar and user information -->
        <div class="ml-2 md:ml-4 flex-shrink-0"></div>
      </div>

    </div>

    <!-- Right section -->
    <div class="flex items-center">
      <div class="relative">
        <!-- Notification icon -->
        <button class="p-2 rounded-full text-gray-500 hover:text-gray-700" @click="toggleNotification">
          <svg class="h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path
              d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
            ></path>
          </svg>
          <!-- Notification count badge -->
          <div
            class="absolute top-0 right-0 -mt-1 -mr-1 bg-red-500 rounded-full w-4 h-4 flex items-center justify-center text-xs text-white"
          >
            {{ notificationCount }}
          </div>
        </button>

        <!-- Notification dropdown -->
        <div v-if="showNotification" class="absolute right-0 mt-2 w-48 bg-white shadow-lg rounded-md z-10">
          <div class="py-2">
            <!-- Recent notifications -->
            <div v-for="notification in notifications" :key="notification.id" class="px-4 py-2 hover:bg-gray-100">
              {{ notification.content }}
            </div>
          </div>
        </div>
      </div>

      <!-- Vertical Divider -->
      <div class="border-l border-gray-300 h-10 ml-4"></div>

      <!-- User information -->
      <div class="ml-2 md:ml-4">
        <div class="flex items-center">
          <img
            alt="User Photo"
            class="w-8 h-8 rounded-full object-cover"
            src="@/assets/user-photo.png"
          />
          <div class="ml-2">
            <div class="font-medium whitespace-nowrap overflow-hidden overflow-ellipsis">
              HI, {{ isMobile ? truncateUserName : user.name }}
            </div>
            <div class="text-gray-500 text-center text-sm">{{ user.role }}</div>
          </div>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup>
import { onBeforeUnmount, onMounted, ref } from "vue";
import { MagnifyingGlassIcon } from "@heroicons/vue/24/outline";

const showNotification = ref(false);
const notifications = ref([
  { id: 1, content: "Notification 1" },
  { id: 2, content: "Notification 2" },
  { id: 3, content: "Notification 3" }
]);
const notificationCount = ref(notifications.value.length);

const user = ref({
  name: "Ahmad Habibul Ulum",
  role: "Admin"
});

const toggleNotification = () => {
  showNotification.value = !showNotification.value;
};

const handleResize = () => {
  const isMobile = window.innerWidth < 768;
  const maxLength = 15;
  const name = user.value.name;
  const words = name.split(" ").slice(0, 2);
  const truncated = words.join(" ");
  user.value.isMobile = isMobile;
  user.value.truncateUserName = name.length > maxLength ? truncated + "..." : name;
};

onMounted(() => {
  window.addEventListener("resize", handleResize);
  handleResize(); // Call the handler initially to set the initial values
});

onBeforeUnmount(() => {
  window.removeEventListener("resize", handleResize);
});

</script>
