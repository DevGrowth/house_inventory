import { UserModel } from "../models/userModel";

export class AuthController {

    signupValidationData(email, name, surname, password) {       
        if(this.#validateEmail(email)===true && this.#validateNome(name) === true 
        && this.#validateNome(surname) === true &&this.#validatePassword(password)===true){
            new UserModel (email, name, surname,password); 
        }else{
            return "Verifica os dados introduzidos";
        }
    }

    #validateEmail(email){
        let regExp = /^\w+[\w.-]*@\b(?:gmail|outlook|hotmail)\.com$/;
        if (regExp.test(email) == true) {
            return true;
        }
        return false;
    }

    #validateNome(name){
        let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
        if (regExp.test(name) == true) {
            return true;
        }
	    return false;
    }

    #validatePassword(password){
        let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
        if (regExp.test(password) == true) {
            return true;
        }
        return false;
    }
}