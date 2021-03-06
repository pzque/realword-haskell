module Curry where

import           Data.Char

-- 在 Haskell 中，所有函数都只接受一个参数。
dropSpace = dropWhile isSpace

r0 = map dropSpace [" a", "f", "    e"]

-- section
-- Haskell 提供了一种方便的符号快捷方式，用于对中序函数进行部分应用：
-- 使用括号包围一个操作符，通过在括号里面提供左操作对象或者右操作对象，
-- 可以产生一个部分应用函数。这种类型的部分函数应用称之为节（section）。
r1 = (1 +) 2 -- 3

r2 = map (* 3) [1, 2] -- [3,6]

r3 = map (2 ^) [1, 2] -- [2,4]

-- 如果向节提供左操作对象，那么得出的部分函数就会将接收到的参数应用为右操作对对象，反之亦然。
r4 = (2 ^) 3

r5 = (^ 3) 2

-- 之前提到过，通过使用反括号来包围一个函数，可以将这个函数用作中序操作符。
-- 这种用法可以让节使用函数：
r6 = (`elem` ['a' .. 'z']) 'f' -- True

r7 = all (`elem` ['a' .. 'z']) "haskell" -- True
