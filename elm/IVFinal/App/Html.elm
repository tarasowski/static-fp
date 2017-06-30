module IVFinal.App.Html exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import IVFinal.App.InputFields as Field
import IVFinal.Generic.ValidatedString exposing (ValidatedString)

soloButton : String -> List (Attribute msg) -> Html msg
soloButton label attributes =
  Html.p []
    [ Html.button attributes 
        [strong [] [text label]]
    ]
      
textInput : ValidatedString a  -> List (Html.Attribute msg) -> Html msg
textInput validated eventHandlers = 
  input ([ type_ "text"
         , value validated.literal
         , size 6
         , Field.border validated
         ] ++ eventHandlers)
  []

