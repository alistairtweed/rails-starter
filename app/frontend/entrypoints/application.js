import * as Turbo from "@hotwired/turbo"
import Alpine from "alpinejs"
import Autosize from "@marcreichel/alpine-autosize"

window.Alpine = Alpine

Alpine.plugin(Autosize)

Alpine.data("AutosizeTextarea", () => ({
  init() {
    this.$root.setAttribute("x-autosize", true)
  }
}))

Alpine.start()
