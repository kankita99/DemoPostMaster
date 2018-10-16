package demopostmaster

class PersonController {
    def personService
    def groupsService

    def index() { }
    def retrievePosts(){
      if(params.post)
        {
        Set<PersonPosts> personposts = personService.postsService(params,session.user)
        Set<PersonGroups> group = groupsService.retrievegp(session.user)
        render (view:'/login/homePost',model:[group:group,personposts:personposts])
        }
        else {
            String errors = "Post cannot be empty!!"
            render(view:'/login/homePost',model:[errors:errors])
        }
    }
    def editPersonPage(){
        render(view:'/person/EditPerson')
    }
    def editPerson(){
        if(params.password && params.address && params.phonenum)
        {
            Person person = personService.editUserService(params, session.user)
            render(view: '/person/EditSuccess', model: [person: person])
        }
        else
        {
            String errors = "Kindly fill all details"
            render(view: '/person/EditPerson', model: [errors: errors])
        }

    }
}
