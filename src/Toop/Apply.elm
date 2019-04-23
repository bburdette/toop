module Toop.Apply exposing
    ( applyT1
    , applyT10
    , applyT11
    , applyT12
    , applyT13
    , applyT14
    , applyT2
    , applyT3
    , applyT4
    , applyT5
    , applyT6
    , applyT7
    , applyT8
    , applyT9
    )


applyT1 : (a -> b) -> T1 a -> b
applyT1 y (T1 a) =
    y a


applyT2 : (a -> b -> x) -> T2 a b -> x
applyT2 y (T2 a b) =
    y a b


applyT3 : (a -> b -> c -> x) -> T3 a b c -> x
applyT3 y (T3 aa ab ac) =
    y aa ab ac


applyT4 : (a -> b -> c -> d -> x) -> T4 a b c d -> x
applyT4 y (T4 a b c d) =
    y a b c d


applyT5 : (a -> b -> c -> d -> e -> x) -> T5 a b c d e -> x
applyT5 y (T5 a b c d e) =
    y a b c d e


applyT6 : (a -> b -> c -> d -> e -> f -> x) -> T6 a b c d e f -> x
applyT6 y (T6 a b c d e f) =
    y a b c d e f


applyT7 : (a -> b -> c -> d -> e -> f -> g -> x) -> T7 a b c d e f g -> x
applyT7 y (T7 a b c d e f g) =
    y a b c d e f g


applyT8 : (a -> b -> c -> d -> e -> f -> g -> h -> x) -> T8 a b c d e f g h -> x
applyT8 y (T8 a b c d e f g h) =
    y a b c d e f g h


applyT9 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> x) -> T9 a b c d e f g h i -> x
applyT9 y (T9 a b c d e f g h i) =
    y a b c d e f g h i


applyT10 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> x) -> T10 a b c d e f g h i j -> x
applyT10 y (T10 a b c d e f g h i j) =
    y a b c d e f g h i j


applyT11 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> x) -> T11 a b c d e f g h i j k -> x
applyT11 y (T11 a b c d e f g h i j k) =
    y a b c d e f g h i j k


applyT12 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> x) -> T12 a b c d e f g h i j k l -> x
applyT12 y (T12 a b c d e f g h i j k l) =
    y a b c d e f g h i j k l


applyT13 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> x) -> T13 a b c d e f g h i j k l m -> x
applyT13 y (T13 a b c d e f g h i j k l m) =
    y a b c d e f g h i j k l m


applyT14 : (a -> b -> c -> d -> e -> f -> g -> h -> i -> j -> k -> l -> m -> n -> x) -> T14 a b c d e f g h i j k l m n -> x
applyT14 y (T14 a b c d e f g h i j k l m n) =
    y a b c d e f g h i j k l m n
