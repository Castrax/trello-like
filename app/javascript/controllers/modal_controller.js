import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ['modal'];

  launchModal() {
    let todoCreationController = this.application.getControllerForElementAndIdentifier(this.modalTarget, "todocreation");
    todoCreationController.open();
  }
}
