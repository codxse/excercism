module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year =
  let mob = \yr by -> yr `mod` by == 0
  in (year `mob` 4) && (not (year `mob` 100) || (year `mob` 400))
