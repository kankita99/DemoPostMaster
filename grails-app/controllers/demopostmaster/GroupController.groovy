package demopostmaster

class GroupController {
    def groupsService
    def index() { }

    Set<Person> retrievePs(){
        Set<Person> person = groupsService.retrievePerson(params)
        render (view: '/group/GroupDisplay', model: [person:person])
    }

    def fillGroup()
    {
        Person person = groupsService.fillGroupService()
        render (view:'/group/CreateGroup' ,model:[person:person])
    }
    def createGroup()
    {
        Person person = groupsService.fillGroupService()
        if(params.gname && params.persons) {
            groupsService.createGroupService(params)
            redirect(action: "sucessGroup")
        }
        else
        {
            String errors="Fill all details"
            render(view:'/group/CreateGroup',model:[errors:errors,person:person])
        }

    }
    def sucessGroup()
    {
        Person person = session.user
        Set<PersonGroups> group = groupsService.retrievegp(person)
        render (view:'/group/GroupSuccess',model:[group:group])
    }
}
