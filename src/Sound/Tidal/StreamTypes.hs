module Sound.Tidal.StreamTypes where

import qualified Data.Map.Strict as Map
import Sound.Tidal.Types
import Sound.Tidal.Show ()

data PlayState a = PlayState {pattern :: Signal a,
                            mute :: Bool,
                            solo :: Bool,
                            history :: [Signal a]
                           }
               deriving Show

type PatId = String
type PlayMap a = Map.Map PatId (PlayState a)

data TickState = TickState {
                    tickArc   :: Arc,
                    tickNudge :: Double
                   }
  deriving Show
