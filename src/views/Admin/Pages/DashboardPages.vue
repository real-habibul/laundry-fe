<template>
  <main class="flex-1 p-4 bg-gray-100">
    <HorizontalDividerComponenet title="Monthly Sales" />

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-3">
      <DashboardCardComponent
        iconColor="green"
        title="Total Total Orders"
        value="176"
        previousValue="100"
        changePercentage="+76%"
        trendIcon="ArrowUpIcon"
      >
        <template #icon>
          <ShieldExclamationIcon class="p-2 text-green-500" />
        </template>
        <template #trendIcon>
          <ArrowUpIcon class="h-4 w-4" />
        </template>
      </DashboardCardComponent>

      <DashboardCardComponent
        iconColor="red"
        title="Total Undone Orders"
        value="4"
        previousValue="2"
        changePercentage="+50%"
        trendIcon="ArrowUpIcon"
      >
        <template #icon>
          <ExclamationTriangleIcon class="p-2 text-red-500" />
        </template>
        <template #trendIcon>
          <ArrowUpIcon class="h-4 w-4" />
        </template>
      </DashboardCardComponent>

      <div class="md:col-span-2 lg:col-span-1">
        <DashboardCardComponent
          iconColor="yellow"
          title="Total On Progress Orders"
          value="10"
          previousValue="7"
          changePercentage="+30%"
          trendIcon="ArrowUpIcon"
        >
          <template #icon>
            <ExclamationCircleIcon class="p-2 text-yellow-500" />
          </template>
          <template #trendIcon>
            <ArrowUpIcon class="h-4 w-4" />
          </template>
        </DashboardCardComponent>
      </div>
    </div>
  </main>
</template>

<script setup>
import DashboardCardComponent from "@/components/DashboardCardComponent.vue";
import HorizontalDividerComponenet from "@/components/HorizontalDividerComponenet.vue";
import { ArrowUpIcon, ExclamationTriangleIcon, ExclamationCircleIcon, ShieldExclamationIcon } from "@heroicons/vue/24/outline";
</script>
