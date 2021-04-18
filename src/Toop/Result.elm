module Toop.Result exposing (andMap, resT1, resT2, resT3, resT4, resT5, resT6, resT7, resT8, resT9, resT10, resT11, resT12, resT13, resT14)

{-| given a Toop of N results, which all share a common Err type, either return a Toop of
all the 'Ok' values, or the first Err.

@docs andMap, resT1, resT2, resT3, resT4, resT5, resT6, resT7, resT8, resT9, resT10, resT11, resT12, resT13, resT14

-}

import Toop exposing (..)


{-| compose a result containing a function with a result containing
a value.
-}
andMap : Result e a -> Result e (a -> b) -> Result e b
andMap =
    Result.map2 (|>)


{-| 1 element toop.
-}
resT1 :
    T1 (Result err a)
    -> Result err (T1 a)
resT1 (T1 rs) =
    Result.map T1 rs


{-| 2 element toop.
-}
resT2 :
    T2 (Result err a) (Result err b)
    -> Result err (T2 a b)
resT2 (T2 rsa rsb) =
    Ok T2
        |> andMap rsa
        |> andMap rsb


{-| 3 element toop.
-}
resT3 :
    T3 (Result err a) (Result err b) (Result err c)
    -> Result err (T3 a b c)
resT3 (T3 rsa rsb rsc) =
    Ok T3
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc


{-| 4 element toop.
-}
resT4 :
    T4 (Result err a) (Result err b) (Result err c) (Result err d)
    -> Result err (T4 a b c d)
resT4 (T4 rsa rsb rsc rsd) =
    Ok T4
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd


{-| 5 element toop.
-}
resT5 :
    T5 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e)
    -> Result err (T5 a b c d e)
resT5 (T5 rsa rsb rsc rsd rse) =
    Ok T5
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse


{-| 6 element toop.
-}
resT6 :
    T6 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f)
    -> Result err (T6 a b c d e f)
resT6 (T6 rsa rsb rsc rsd rse rsf) =
    Ok T6
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf


{-| 7 element toop.
-}
resT7 :
    T7 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g)
    -> Result err (T7 a b c d e f g)
resT7 (T7 rsa rsb rsc rsd rse rsf rsg) =
    Ok T7
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg


{-| 8 element toop.
-}
resT8 :
    T8 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h)
    -> Result err (T8 a b c d e f g h)
resT8 (T8 rsa rsb rsc rsd rse rsf rsg rsh) =
    Ok T8
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh


{-| 9 element toop.
-}
resT9 :
    T9 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i)
    -> Result err (T9 a b c d e f g h i)
resT9 (T9 rsa rsb rsc rsd rse rsf rsg rsh rsi) =
    Ok T9
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi


{-| 10 element toop.
-}
resT10 :
    T10 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i) (Result err j)
    -> Result err (T10 a b c d e f g h i j)
resT10 (T10 rsa rsb rsc rsd rse rsf rsg rsh rsi rsj) =
    Ok T10
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi
        |> andMap rsj


{-| 11 element toop.
-}
resT11 :
    T11 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i) (Result err j) (Result err k)
    -> Result err (T11 a b c d e f g h i j k)
resT11 (T11 rsa rsb rsc rsd rse rsf rsg rsh rsi rsj rsk) =
    Ok T11
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi
        |> andMap rsj
        |> andMap rsk


{-| 12 element toop.
-}
resT12 :
    T12 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i) (Result err j) (Result err k) (Result err l)
    -> Result err (T12 a b c d e f g h i j k l)
resT12 (T12 rsa rsb rsc rsd rse rsf rsg rsh rsi rsj rsk rsl) =
    Ok T12
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi
        |> andMap rsj
        |> andMap rsk
        |> andMap rsl


{-| 13 element toop.
-}
resT13 :
    T13 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i) (Result err j) (Result err k) (Result err l) (Result err m)
    -> Result err (T13 a b c d e f g h i j k l m)
resT13 (T13 rsa rsb rsc rsd rse rsf rsg rsh rsi rsj rsk rsl rsm) =
    Ok T13
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi
        |> andMap rsj
        |> andMap rsk
        |> andMap rsl
        |> andMap rsm


{-| 14 element toop.
-}
resT14 :
    T14 (Result err a) (Result err b) (Result err c) (Result err d) (Result err e) (Result err f) (Result err g) (Result err h) (Result err i) (Result err j) (Result err k) (Result err l) (Result err m) (Result err n)
    -> Result err (T14 a b c d e f g h i j k l m n)
resT14 (T14 rsa rsb rsc rsd rse rsf rsg rsh rsi rsj rsk rsl rsm rsn) =
    Ok T14
        |> andMap rsa
        |> andMap rsb
        |> andMap rsc
        |> andMap rsd
        |> andMap rse
        |> andMap rsf
        |> andMap rsg
        |> andMap rsh
        |> andMap rsi
        |> andMap rsj
        |> andMap rsk
        |> andMap rsl
        |> andMap rsm
        |> andMap rsn
