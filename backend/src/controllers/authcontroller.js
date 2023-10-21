import { UserModel } from "../models/user";

export class AuthController {
  login(email, password) {}

  signUp(name, surname, email, password) {}

  signupValidationData(email, name, surname, password) {
    if (
      this.#validateEmail(email) === true &&
      this.#validateName(name) === true &&
      this.#validateName(surname) === true &&
      this.#validatePassword(password) === true
    ) {
      return new UserModel(email, name, surname, password);
    } else {
      return "Verifica os dados introduzidos";
    }
  }

  #validateEmail(email) {
    let regExp = /^\w+[\w.-]*@\b(?:gmail|outlook|hotmail)\.com$/;
    if (regExp.test(email) == true) {
      return true;
    }
    return false;
  }

  #validateName(name) {
    let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
    if (regExp.test(name) == true) {
      return true;
    }
    return false;
  }

  #validatePassword(password) {
    let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
    if (regExp.test(password) == true) {
      return true;
    }
    return false;
  }
}
