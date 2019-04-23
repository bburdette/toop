module Toop.Take exposing
    ( takeT1
    , takeT10
    , takeT11
    , takeT12
    , takeT13
    , takeT14
    , takeT2
    , takeT3
    , takeT4
    , takeT5
    , takeT6
    , takeT7
    , takeT8
    , takeT9
    , tuply
    )


takeT1 : List a -> Maybe ( T1 a, List a )
takeT1 la =
    andX T1 la


takeT2 : List a -> Maybe ( T2 a a, List a )
takeT2 l =
    andX T2 l
        |> Maybe.andThen (tuply andX)


takeT3 : List a -> Maybe ( T3 a a a, List a )
takeT3 l =
    andX T3 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT4 : List a -> Maybe ( T4 a a a a, List a )
takeT4 l =
    andX T4 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT5 : List a -> Maybe ( T5 a a a a a, List a )
takeT5 l =
    andX T5 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT6 : List a -> Maybe ( T6 a a a a a a, List a )
takeT6 l =
    andX T6 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT7 : List a -> Maybe ( T7 a a a a a a a, List a )
takeT7 l =
    andX T7 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT8 : List a -> Maybe ( T8 a a a a a a a a, List a )
takeT8 l =
    andX T8 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT9 : List a -> Maybe ( T9 a a a a a a a a a, List a )
takeT9 l =
    andX T9 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT10 : List a -> Maybe ( T10 a a a a a a a a a a, List a )
takeT10 l =
    andX T10 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT11 : List a -> Maybe ( T11 a a a a a a a a a a a, List a )
takeT11 l =
    andX T11 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT12 : List a -> Maybe ( T12 a a a a a a a a a a a a, List a )
takeT12 l =
    andX T12 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT13 : List a -> Maybe ( T13 a a a a a a a a a a a a a, List a )
takeT13 l =
    andX T13 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


takeT14 : List a -> Maybe ( T14 a a a a a a a a a a a a a a, List a )
takeT14 l =
    andX T14 l
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)
        |> Maybe.andThen (tuply andX)


rest l =
    List.drop 1 l


lh : List a -> Maybe ( a, List a )
lh la =
    case List.head la of
        Just a ->
            Just ( a, rest la )

        Nothing ->
            Nothing


andX : (a -> b) -> List a -> Maybe ( b, List a )
andX f l =
    lh l
        |> Maybe.map (\( v, ls ) -> ( f v, ls ))


tuply : (a -> b -> c) -> ( a, b ) -> c
tuply f ( a, b ) =
    f a b
