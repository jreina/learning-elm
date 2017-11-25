module Main exposing (..)

import Html exposing (..)
import Html exposing (beginnerProgram)
import Html.Events exposing (..)
-- Four parts

model =
  { showFace = False }

type Msg =
  ToggleFace

update msg model_ =
  case msg of
    ToggleFace -> { model_ | showFace = not model_.showFace }

view model_ = 
  div []
    [ h1 [] [ text "Face generator" ]
    , button [onClick ToggleFace] 
      [ text <| 
        if 
          model_.showFace 
        then 
          "Unface me" 
        else 
          "Face me" 
      ]
    , if model_.showFace then
        text "c:"
      else
        text ""
    ]

main = 
  beginnerProgram
  { model = model
  , update = update
  , view = view }