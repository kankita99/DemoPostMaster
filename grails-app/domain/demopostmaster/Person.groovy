package demopostmaster

class Person {
    String username
    String password
    String address
    Long phonenum

    static belongsTo =  PersonGroups
    static hasMany =   [groups: PersonGroups,posts:PersonPosts]

    Person(String username,String password,String address,Long phonenum)
    {
        this()
        this.username=username
        this.password=password
        this.address=address
        this.phonenum=phonenum
    }

    static constraints = {
        username blank:false, unique: true
        password balnk:false
    }
    static mapping={

    }
}
