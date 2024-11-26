import defaultTheme from "tailwindcss/defaultTheme"

export default {
  content: [
    "./app/helpers/**/*.rb",
    "./app/views/**/*.html.erb"
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Roboto", ...defaultTheme.fontFamily.sans],
      }
    }
  },
  corePlugins: {
    aspectRation: false
  },
  plugins: [
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/container-queries"),
    require("@tailwindcss/forms")({ strategy: "class" }),
    require("@tailwindcss/typography"),
  ]
}
