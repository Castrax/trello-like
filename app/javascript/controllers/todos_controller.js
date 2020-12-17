import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['todoList', 'todoTitle', 'todoDescription', 'todoPosition']

  connect() {
    console.log("We're connected!")
  }

  createSuccess(event) {
    const [_data, _status, xhr] = event.detail

    this.todoListTarget.innerHTML = xhr.response + this.todoListTarget.innerHTML
    this.todoTitleTarget.value = ''
    this.todoDescriptionTarget.value = ''
    this.todoPositionTarget.value = ''
  }
}
