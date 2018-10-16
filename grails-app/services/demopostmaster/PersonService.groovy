package demopostmaster

import grails.transaction.Transactional

@Transactional
class PersonService {

   def postsService(def params,Person person)
   {
      PersonPosts personpost = new PersonPosts(posts:params.post)
      Person person1 = Person.findByUsername(person.username)
      person1.addToPosts(personpost)
      personpost.save(failOnError: true)
      person1.save(failOnError: true)
      return person1.posts
   }

   def editUserService(def params,Person person){
      Person person1 = Person.findByUsername(person.username)
      person1.password = params.password
      person1.address = params.address
      person1.phonenum = params.phonenum as Long

      person1.save()
      return person1

   }
   def postsretrieve(Person person)
   {
      Person person1 = Person.findByUsername(person.username)
      return person1.posts
   }
}
