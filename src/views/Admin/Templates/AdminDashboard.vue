<template>
  <div class="flex">
    <SidebarComponent v-show="!isMobileSize" />
    <div class="flex flex-col flex-1">
      <HeaderComponent />
      <MainContent />
    </div>
    <button @click="toggleMobileSidebar" class="md:hidden fixed bottom-4 right-4 bg-gray-900 text-white p-2 rounded">
      <svg v-if="isMobileSidebarVisible" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path>
      </svg>
      <svg v-else class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
      </svg>
    </button>
  </div>
</template>

<script>
import HeaderComponent from './HeaderComponent.vue';
import SidebarComponent from './SidebarComponent.vue';
import MainContent from './MainContentComponent.vue';

export default {
  components: {
    HeaderComponent,
    SidebarComponent,
    MainContent,
  },
  data() {
    return {
      isMobileSidebarVisible: false,
    };
  },
  computed: {
    isMobileSize() {
      return window.innerWidth < 768; // Adjust the breakpoint as needed
    },
  },
  methods: {
    toggleMobileSidebar() {
      this.isMobileSidebarVisible = !this.isMobileSidebarVisible;
    },
  },
  mounted() {
    window.addEventListener('resize', () => {
      this.isMobileSidebarVisible = false;
    });
  },
};
</script>

<style>
/* Component styles here... */
</style>
