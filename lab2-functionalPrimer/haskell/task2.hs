-- Define a function that performs an IO action
-- IO () means: this does input/output but returns no useful value
onePlusOne :: IO ()
onePlusOne = putStrLn "1 + 1 = 2"   -- Prints a fixed message to the terminal


-- Main program entry point (this runs when the program starts)
main = do
  
  -- Print a welcome message to the user
  putStrLn "Welcome to the programme. Please enter your name"
  
  -- Read user input from the terminal
  -- getLine :: IO String
  -- '<-' extracts the String from the IO action
  name <- getLine
  
  -- Print a greeting using string concatenation (++)
  putStrLn ("Hello " ++ name ++ ", hope you like Haskell!")
  
  -- Call the custom IO function defined above
  -- This runs the print action inside onePlusOne
  onePlusOne
