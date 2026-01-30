// Create list of ints from a to b (Haskell equivalent: [a..b])
function arrFunc(a, b) {
  const arr = [];
  for (let i = a; i <= b; i++) {
    arr.push(i);
  }
  return arr;
}

// applicatorFunc takes:
// 1) a function that returns an array
// 2) a and b (range limits)
// 3) a flag s deciding behaviour
//
// if s === 's' -> return SUM
// otherwise -> return AVERAGE
function applicatorFunc(inpFunc, a, b, s) {
  const arr = inpFunc(a, b);

  const sum = arr.reduce((acc, cur) => acc + cur, 0);

  if (s === 's') {
    return sum;
  } else {
    return sum / arr.length; // average (not hardcoded /5)
  }
}

// Example calls
console.log(applicatorFunc(arrFunc, 1, 5, 's')); // 15
console.log(applicatorFunc(arrFunc, 1, 5, 'a')); // 3
