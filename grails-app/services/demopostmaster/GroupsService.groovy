package demopostmaster

import grails.transaction.Transactional

@Transactional
class GroupsService {

    Set<PersonGroups> retrievegp(Person person) {
        return person.groups
    }
    Set<Person> retrievePerson(def params){
        PersonGroups persongroup=PersonGroups.findById(params.groupId)
        return persongroup.persons
    }
    def fillGroupService(){
        Person person=new Person()
        return person
    }

    def createGroupService( def params){

        PersonGroups group1 = new PersonGroups(groups: params.gname)
        ArrayList<String> users = new ArrayList<String>()
        users.addAll(params.persons)
        users.each
        {
                Person person1 = Person.findByUsername(it)
                group1.addToPersons(person1)
           }
        group1.save()

    }

}
