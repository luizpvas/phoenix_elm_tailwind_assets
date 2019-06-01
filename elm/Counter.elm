module Counter exposing (..)

import Browser
import Html exposing (..)
import Html.Events exposing (onClick)


main =
    Browser.sandbox { init = init, view = view, update = update }


type Msg
    = Increment
    | Decrement


init : Int
init =
    0



view : Int -> Html.Html Msg
view model =
    div []
        [ button [ onClick Increment ] [ text "+" ]
        , text (String.fromInt model)
        , button [ onClick Decrement ] [ text "-" ]
        ]


update : Msg -> Int -> Int
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1