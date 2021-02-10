import Rails from "@rails/ujs"
import { Controller } from "stimulus"
import Sortable from 'sortablejs'

export default class extends Controller {
  connect() {
    this.Sortable = Sortable.create(this.element, {
      group: 'lists',
      onEnd: this.end.bind(this)
    })
  }

  end(event) {
    let id = event.item.dataset.id
    let data = new FormData()
    console.log(event);
    data.append('position', event.newIndex + 1)
    data.append('list_id', event.to.attributes[0].value)

    Rails.ajax({
      url: this.data.get("url").replace(":id", id),
      type: 'PATCH',
      data: data
    })
  }
}

