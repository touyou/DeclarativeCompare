<script setup>
const counter = useState("counter", () => 0);
</script>

<template>
  <div class="container">
    <main class="main">
      <h1 class="title">{{ counter }}</h1>
      <div class="grid">
        <button class="button" @click="counter++">Plus</button>
        <button class="button" @click="counter--">Minus</button>
        <button class="button destructive" @click="counter = 0">Reset</button>
      </div>
    </main>
  </div>
</template>
