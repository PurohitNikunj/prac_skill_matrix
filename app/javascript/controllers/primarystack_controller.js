import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["skill_set", "stack_set", "second_skill_change"]
  change(event) {
    let stack_id = event.target.selectedOptions[0].value;
    let skill_target = this.skill_setTarget.id
    let stack_target = this.stack_setTarget.id
    let second_skill_change = this.second_skill_changeTarget.id
    get(`/edit_primaryskill_secondarystack?skill_target=${skill_target}&stack_target=${stack_target}&stackId=${stack_id}&ssc=${second_skill_change}`, {
      responseKind: "turbo-stream"
    })
  }
}