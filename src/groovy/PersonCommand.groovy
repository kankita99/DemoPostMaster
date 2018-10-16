package demopostmaster

import demopostmaster.Person
import grails.validation.Validateable

@Validateable
class PersonCommand {
    String username
    String password
    String repassword
    String address
    Long phonenum

    static constraints = {
        importFrom Person
        /*username validator: { val, obj ->
            obj.loginService.canLogin(obj.username, obj.password)*/
        repassword blank: false, validator: { val, obj ->
            if (!(val == obj.password)) {
                return "field.match.message"
               }
        }
    }
}
