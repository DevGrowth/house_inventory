export class SignupValidation {
    #email;
    #name;
    #password;

    constructor(email, name, password) {
        this.email = email;
        this.name = name;
        this.password = password;
        validar();
    }

    validar() {
        let emalValidation = false;
        let nameValidation = false;
        let passwordValidation = false;
        if(this.#validarEmail(this.email)===true)
            emalValidation = true
        if(this.validarNome(this.name)===true)
            nameValidation = true;
        if(this.#validarPassword(this.password)===true)
            passwordValidation = true;
        if(emalValidation === emalValidation === passwordValidation === true){
            return true;
        }else{
            return false;
        }
    }

    #validarEmail(email){
        let regExp = /^\w+[\w.-]*@\b(?:gmail|outlook|hotmail)\.com$/;
        if (regExp.test(email) == true) {
            return true;
        }
        return false;
    }

    #validarNome(name){
        let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
        if (regExp.test(name) == true) {
            return true;
        }
	    return false;
    }

    #validarPassword(password){
        let regExp = /^[a-zA-Z]+(([',.-][a-zA-Z])[a-zA-Z]*)*$/;
        if (regExp.test(password) == true) {
            return true;
        }
        return false;
    }

}