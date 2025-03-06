import defaultTheme from "tailwindcss/defaultTheme"

export default {
  content: [
    "./app/helpers/**/*.rb",
    "./app/views/**/*.html.erb"
  ],
  theme: {
    container: {
      center: true
    },
    extend: {
      fontFamily: {
        sans: ["Inter", ...defaultTheme.fontFamily.sans],
      },
      typography: {
        DEFAULT: {
          css: {
            color: "inherit",
            maxWidth: "100%"
          }
        }
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
    require("@tailwindcss/typography")({
      className: "Typography"
    })
  ]
}
