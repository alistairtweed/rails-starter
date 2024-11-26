import FullReload from "vite-plugin-full-reload"
import RubyPlugin from "vite-plugin-ruby"

export default {
  plugins: [
    FullReload(["app/views/**/*", "config/routes.rb"], { delay: 100 }),
    RubyPlugin()
  ]
}
