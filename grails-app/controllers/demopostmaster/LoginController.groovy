package demopostmaster
import demopostmaster.PersonCommand
class LoginController {
    //static scaffold = true
        def loginService
        def groupsService
        def personService

    def index() {
        render (view:'/index')
    }
    def checkRepassword = { PersonCommand command->
        if(command.validate())
        {

            forward (action:'saveDB',model:[params:params])
        }
        else
        {
            flash.message=command.errors.allErrors.collect {
                error->error.field
            }.join(",")
            }
                    render(view:'/login/formfill',model:[command:command])
        }


    def openSignUpForm(){
        render (view:'/login/formfill')
            }
    def saveDB(){

        Person person=loginService.saveToDB(params)
        render (view:'/login/successRegistered')
    }
    def signin(){

        Person person = loginService.retrieve(params)
        session.user = person
        if(person){
            Set<PersonGroups> group = groupsService.retrievegp(person)
            Set<PersonPosts> personposts = personService.postsretrieve(session.user)
            render(view:'/login/homePost', model: [group: group,personposts:personposts])
        } else{
            render(view:'/index')
        }

      }
    def writePosts()
    {
        PersonGroups persongroup=new PersonGroups(posts:params.posts,groups:"xyz")
        persongroup.save(failOnError: true);
        render(view:'/index')
    }
    def invalidate(){
        session.invalidate()
        render(view:'/index')
    }
}
