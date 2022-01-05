import { defineNuxtConfig } from "nuxt3";
import { resolve } from "path";

// https://v3.nuxtjs.org/docs/directory-structure/nuxt.config
export default defineNuxtConfig({
  rootDir: __dirname,
  head: {
    title: "Count App by Nuxt.js",
  },
  css: [resolve(__dirname, "assets/main.css")],
});
