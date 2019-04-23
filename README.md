# Toop 

A set of tuple-like data structures that allow more than 3 elements.

The main thing I use Toop for is in case statements, to pattern match 
multiple things at once:

```elm

import Toop

case Toop.T4 mba mbb mbc mbd of 
  Toop.T4 (Just a) (Just b) (Just c) (Just d) -> 
    -- we've got all the things!
  _ -> 
    -- failure to get all the things.

```

there are also applyT<n> functions.  

apply calls a function using the Toop elements as the arguments.  

```elm

args = Toop.T6 "this" 5 "that" 6 (<) "less than" 

comp name1 val1 name2 val2 op opname = 
  if op val1 val2 then 
    name1 ++ " is " ++ opname  ++ name2
  else
    name2 ++ " is " ++ opname  ++ name1

resultString = Toop.Apply.applyT6 comp args

```

And then there's the take functions:

```elm

nums = [1 3 5 2 4 6 8 9]

fiveDmath : Toop.T5 Float Float Float Float Float 
fiveDmath args = 
  -- some kind of calculation involving exactly 5 numbers

mbresult = (Toop.Take.takeT5 nums) |> Maybe.map fiveDmath 

```
