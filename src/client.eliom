open Eliom_content.Html.D
open Js_of_ocaml

let main () =
  let button = button [pcdata "Click Me"] in
  let output = div [] [] in

  let _ = Dom.appendChild (Dom_html.getElementById "app") button in
  let _ = Dom.appendChild (Dom_html.getElementById "app") output in

  let () =
    button##.onclick := Dom_html.handler (fun _ ->
      let msg = Js.string "Button was clicked!" in
      Dom.appendChild output (Dom_html.document##createTextNode msg);
      Js._false
    )
  in
  ()

let () = Js_of_ocaml.Dom_html.window##.onload := Dom_html.handler (fun _ -> main (); Js._false)
