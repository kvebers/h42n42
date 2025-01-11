module GameLogic = struct
  type creet_state = Healthy | Contaminated | Berserk | Mean

  type creet = {
    id : int;
    mutable x : int;
    mutable y : int;
    mutable state : creet_state;
  }

  let create_creet id x y =
    { id; x; y; state = Healthy }

  let move_creet creet =
    creet.x <- creet.x + Random.int 10 - 5;
    creet.y <- creet.y + Random.int 10 - 5
end