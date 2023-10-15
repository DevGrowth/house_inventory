import {SignupValidation} from './sinupValidation';
export class Signup {
    email;
    name;
    password;

    constructor(email, name, password) {
        this.email = email;
        this.name = name;
        this.password = password;
    }

    Signup(email, nome, password) {
        let validar = new SignupValidation(email, nome, password);
        if(validar ===true){
            //case true, the logic to register....
        }
    }


}
