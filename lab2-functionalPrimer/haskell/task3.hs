-- Function using nested IF statements to determine the sign of a number
-- Returns:
--   -1 if x is negative
--    0 if x is zero
--    1 if x is positive
sgn x =
  if x < 0
    then -1
    else if x == 0
      then 0
      else 1


-- Same logic as 'sgn', but written using GUARDS
-- Guards are more readable than nested IFs
-- Conditions are checked from top to bottom
sgnGuards x
  | x < 0     = -1        -- If x is negative
  | x == 0    = 0         -- If x equals zero
  | otherwise = 1         -- Otherwise (x must be positive)


-- Main program entry point (runs when program starts)
main = do
  
  -- Ask the user to enter a number
  putStrLn "Please enter a number"
  
  -- Read user input as a STRING
  input <- getLine
  
  -- Convert the input STRING into an INTEGER
  -- 'read' parses text into a number
  let x = (read input :: Int)
  
  -- Call the Guard-based function to get the sign of the number
  -- 'show' converts the result back into a String so it can be printed
  putStrLn (show (sgnGuards x))

