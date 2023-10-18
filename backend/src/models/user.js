export class UserModel {
    #email;
    #name;
    #surname;
    #password;

    constructor(email, name,surname, password) {
        this.#email = email;
        this.#name = name;
        this.#surname = surname;
        this.#password = password;
        this.#signup(this.#email, this.#name,this.#surname,this.#password);
    }

    #signup(email, nome, surname, password) {
      // TODO
    }
}