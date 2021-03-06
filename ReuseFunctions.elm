module Main exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
  [ 1, 2, 3, 4, 5 ]

printThing : thing -> Html msg
printThing x =
  li [] [ text <| toString x ]

fruits =
  [ {name = "Orange" }, { name = "Banana" } ]

main = 
  ul [] (List.map printThing fruits)
