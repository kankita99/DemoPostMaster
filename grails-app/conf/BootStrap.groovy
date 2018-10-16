import demopostmaster.Person
import demopostmaster.PersonGroups
import demopostmaster.PersonPosts

class BootStrap {

    def init = { servletContext ->

        PersonGroups group1 = new PersonGroups(groups: "college_group")
        PersonGroups group2 = new PersonGroups(groups: "refreshment")


        Person person1 = new Person(username: "Shubham", password: "Sharma",address:"Dehradun",phonenum: 12345)
        Person person2 = new Person(username: "Ankita", password: "Kumari",address:"noida",phonenum: 12345)

        //person1.save()
        //person2.save()

        group1.addToPersons(person1)
        group1.addToPersons(person2)
        group2.addToPersons(person2)

        group2.save()
        group1.save()

        PersonPosts personpost = new PersonPosts(posts: "Hello everyone")
        person2.addToPosts(personpost)
        personpost.save()
        person2.save()


    }
    def destroy = {
    }
}
