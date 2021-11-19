module Toop exposing
    ( T2(..), T3(..), T4(..), T5(..), T6(..), T7(..), T8(..), T9(..), T10(..), T11(..), T12(..), T13(..), T14(..)
    , t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14
    )

{-| A set of tuple-like data structures, allowing more than 3 elements.


# Constructors

@docs T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14

EG:

    T2 (Just 1) "Stuffykins"` == (Just 1, "Stuffykins")
    T3 True 1 "Stuffykins" == (True, 1, "Stuffykins")
    --
    T7 True 7 "Stuffykins" False Nothing (Ok "wat?") 7777777777 /= "No more Tuple slots :/"


# `uncurry`N's: These are `uncurry` functions for converting anonymous TupleN's into Records with named fields.

@docs t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14

EG:

    T2 a b |> t2 My2FieldRecordConstructor

    T3 a b c |> t3 My3FieldRecordConstructor

    T4 a b c d |> t4 My4FieldRecordConstructor

    T5 a b c d e |> t5 My4FieldRecordConstructor

-}


{-| 2 element toop.
-}
type T2 a b
    = T2 a b


t2 : (a -> a2 -> b) -> T2 a a2 -> b
t2 fn (T2 a a2) =
    fn a a2


{-| 3 element toop.
-}
type T3 a b c
    = T3 a b c


t3 : (a -> a2 -> a3 -> b) -> T3 a a2 a3 -> b
t3 fn (T3 a a2 a3) =
    fn a a2 a3


{-| 4 element toop.
-}
type T4 a b c d
    = T4 a b c d


t4 : (a -> a2 -> a3 -> a4 -> b) -> T4 a a2 a3 a4 -> b
t4 fn (T4 a a2 a3 a4) =
    fn a a2 a3 a4


{-| 5 element toop.
-}
type T5 a b c d e
    = T5 a b c d e


t5 : (a -> a2 -> a3 -> a4 -> a5 -> b) -> T5 a a2 a3 a4 a5 -> b
t5 fn (T5 a a2 a3 a4 a5) =
    fn a a2 a3 a4 a5


{-| 6 element toop.
-}
type T6 a b c d e f
    = T6 a b c d e f


t6 : (a -> a2 -> a3 -> a4 -> a5 -> a6 -> b) -> T6 a a2 a3 a4 a5 a6 -> b
t6 fn (T6 a a2 a3 a4 a5 a6) =
    fn a a2 a3 a4 a5 a6


{-| 7 element toop.
-}
type T7 a b c d e f g
    = T7 a b c d e f g


t7 : (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> b) -> T7 a a2 a3 a4 a5 a6 a7 -> b
t7 fn (T7 a a2 a3 a4 a5 a6 a7) =
    fn a a2 a3 a4 a5 a6 a7


{-| 8 element toop.
-}
type T8 a b c d e f g h
    = T8 a b c d e f g h


t8 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> b)
    -> T8 a a2 a3 a4 a5 a6 a7 a8
    -> b
t8 fn (T8 a a2 a3 a4 a5 a6 a7 a8) =
    fn a a2 a3 a4 a5 a6 a7 a8


{-| 9 element toop.
-}
type T9 a b c d e f g h i
    = T9 a b c d e f g h i


t9 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> b)
    -> T9 a a2 a3 a4 a5 a6 a7 a8 a9
    -> b
t9 fn (T9 a a2 a3 a4 a5 a6 a7 a8 a9) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9


{-| 10 element toop.
-}
type T10 a b c d e f g h i j
    = T10 a b c d e f g h i j


t10 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> b)
    -> T10 a a2 a3 a4 a5 a6 a7 a8 a9 a10
    -> b
t10 fn (T10 a a2 a3 a4 a5 a6 a7 a8 a9 a10) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9 a10


{-| 11 element toop.
-}
type T11 a b c d e f g h i j k
    = T11 a b c d e f g h i j k


t11 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> a11 -> b)
    -> T11 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11
    -> b
t11 fn (T11 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11


{-| 12 element toop.
-}
type T12 a b c d e f g h i j k l
    = T12 a b c d e f g h i j k l


t12 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> a11 -> a12 -> b)
    -> T12 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
    -> b
t12 fn (T12 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12


{-| 13 element toop.
-}
type T13 a b c d e f g h i j k l m
    = T13 a b c d e f g h i j k l m


t13 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> a11 -> a12 -> a13 -> b)
    -> T13 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13
    -> b
t13 fn (T13 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13


{-| 14 element toop.
-}
type T14 a b c d e f g h i j k l m n
    = T14 a b c d e f g h i j k l m n


t14 :
    (a -> a2 -> a3 -> a4 -> a5 -> a6 -> a7 -> a8 -> a9 -> a10 -> a11 -> a12 -> a13 -> a14 -> b)
    -> T14 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14
    -> b
t14 fn (T14 a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14) =
    fn a a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 a14
