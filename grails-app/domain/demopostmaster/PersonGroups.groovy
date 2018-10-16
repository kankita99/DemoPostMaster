package demopostmaster

class PersonGroups {

    String groups

    static hasMany = [persons:Person]



    static constraints = {

               groups unique:true

    }

    static mapping = {
        
    }
}
