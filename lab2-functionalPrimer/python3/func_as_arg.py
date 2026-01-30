# Function that generates a list of integers from a to b
# Example: listFunc(1, 5) -> [1, 2, 3, 4, 5]
def listFunc(a, b):
    return [i for i in range(a, b + 1)]


# applicatorFunc takes:
# 1) A function that generates a list
# 2) Two numbers (a and b) defining the range
# 3) A character flag that decides behaviour
#
# If s == 's' -> return SUM of numbers
# Otherwise -> return AVERAGE of numbers
def applicatorFunc(func, a, b, s):
    
    numbers = func(a, b)  # Call the function to generate the list
    
    if s == 's':
        return sum(numbers)  # Compute sum
    else:
        return sum(numbers) / len(numbers)  # Compute average


# Call applicatorFunc and print result
print(applicatorFunc(listFunc, 1, 5, 's'))   # Try 'a' for average
