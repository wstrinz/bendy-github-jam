module Models exposing (..)

import Dict
import Storylets.Models exposing (Storylet, initialStorylets)
import Players.Models exposing (Inventory)
import Events.Models as Events
import SharedModels exposing (StateType)
import Editor.Models exposing (EditModel, initialEditModel)


type Activity
    = Game
    | BendyRealm
    | Edit


type alias Model =
    { activity : Activity
    , inventory : Inventory
    , currentStateType : StateType
    , currentStateId : Int
    , storylets : Dict.Dict Int Storylet
    , events : Dict.Dict Int Events.Event
    , editModel : EditModel
    }


initModel : Model
initModel =
    { activity = BendyRealm
    , inventory = { rubies = 1 }
    , currentStateType = SharedModels.Storylet
    , currentStateId = 0
    , storylets = initialStorylets
    , events = Events.initialEvents
    , editModel = initialEditModel
    }
