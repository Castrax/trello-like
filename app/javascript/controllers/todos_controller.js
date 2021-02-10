import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['todoList', 'todoTitle', 'todoDescription', 'todoPosition']

  createSuccess(event) {
    const [_data, _status, xhr] = event.detail
    const target = event.target

    this.todoListTarget.innerHTML += xhr.response
    this.todoTitleTarget.value = ''
    this.todoDescriptionTarget.value = ''
    const list_id = this.todoListTarget.className;
  }
}
