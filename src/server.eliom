open Eliom_content.Html.D
open Eliom_lib

let main () =
  let page_content = 
    div [] [
      h1 [] [pcdata "Welcome to My Ocsigen App"];
      p [] [pcdata "This is a simple Ocsigen application."];
    ]
  in
  Eliom_registration.Html.register
    ~name:"home"
    ~title:"Home"
    ~content:(fun () -> Lwt.return page_content)

let () =
  Eliom_service.create
    ~service:(Eliom_service.Path [""])
    ~path:("")
    ~cb:main