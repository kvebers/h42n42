module GameUI = struct
  let render_creet creet =
    let div = Dom_html.createDiv Dom_html.document in
    div##.id := Js.string (string_of_int creet.GameLogic.id);
    div##.style##.left := Js.string (Printf.sprintf "%dpx" creet.GameLogic.x);
    div##.style##.top := Js.string (Printf.sprintf "%dpx" creet.GameLogic.y);
    Dom.appendChild Dom_html.document##.body div;
    div
end