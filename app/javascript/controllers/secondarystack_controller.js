import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["secondary_skill_set"]
  change(event) {
    let stack_id = event.target.selectedOptions[0].value;
    let secondary_skill_target = this.secondary_skill_setTarget.id
    get(`/edit_secondaryskill?secondary_skill_target=${secondary_skill_target}&stackId=${stack_id}`, {
      responseKind: "turbo-stream"
    })
  }
}
