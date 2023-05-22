<template>
  <div class="flex">
    <div class="flex flex-col flex-1">
      <HeaderComponent />

      <!-- Menubar -->
      <div class="bg-white text-gray-400 flex flex-col overflow-y-auto">
        <nav class="flex flex-col flex-grow py-4 px-4 md:flex-row md:py-0">
          <a
            :class="{ 'bg-green-100 text-green-500': activeMenu === 'dashboard' }"
            class="flex items-center py-2 px-6 rounded-3xl font-semibold md:mr-4"
            href="#"
            @click="setActiveMenu('dashboard')"
          >
            <div class="animate-spin mr-2">
              <LifebuoyIcon class="h-6 w-6" />
            </div>
            Dashboard
          </a>
          <a
            :class="{ 'bg-green-100 text-green-500': activeMenu === 'order' }"
            class="flex items-center py-2 px-6 font-semibold"
            href="#"
            @click="setActiveMenu('order')"
          >
            <PuzzlePieceIcon class="h-6 w-6 text-gray-300 mr-2" />
            Customer
          </a>
        </nav>

        <div v-if="activeMenu === 'dashboard'">
          <DashboardContent />
        </div>
        <div v-if="activeMenu === 'order'">
          <CustomerContent />
        </div>
      </div>

    </div>
  </div>
  <footer class="bg-gray-50 text-gray-600 py-4 px-4 text-center">
    <div class="text-sm">© 2023 Ahmad Habibul Ulum. All rights reserved.</div>
  </footer>
</template>

<script setup>
import { LifebuoyIcon, PuzzlePieceIcon } from "@heroicons/vue/24/outline";
import { ref } from "vue";
import HeaderComponent from "@/views/Admin/Templates/HeaderComponent.vue";

// List of pages
import DashboardContent from "@/views/Admin/Pages/DashboardPages.vue";
import CustomerContent from "@/views/Admin/Pages/CustomerPages.vue";
const activeMenu = ref("order");

const setActiveMenu = (menu) => {
  activeMenu.value = menu;
};
</script>

<style>
footer {
  position: fixed;
  bottom: 0;
  width: 100%;
}
</style>
