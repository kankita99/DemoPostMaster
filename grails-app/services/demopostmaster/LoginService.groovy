package demopostmaster

import grails.transaction.Transactional

@Transactional
class LoginService {

    Person retrieve(def params) {
        String username=params.username
        String password=params.password
        def person = Person.findWhere(username:params['username'],password:params['password'])
        return person
    }

    Person saveToDB(def params){
        Long phonenum= params.phonenum as Long
        Person person=new Person(username:params.username,password: params.password,address:params.address,phonenum:phonenum)
        person.save(failOnError: true)
        return person
       }

}
