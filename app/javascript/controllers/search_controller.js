import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["query", "exercise"]

    matches_query(text) {
        return text.search(this.queryTarget.value) != -1
    }

    runSearch() {
        this.exerciseTargets.forEach(element => {
            element.hidden = !this.matches_query(element.textContent)
        })
    }
}
