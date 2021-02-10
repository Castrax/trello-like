import { Controller } from "stimulus";
import { Modal } from "bootstrap";

export default class extends Controller {
  open() {
    const myModal = new Modal(this.element, {});
    myModal.show();
  }
}
