// Phase 1 - JS Fundamentals
// Mystery Scoping with var, let, const
function mysteryScoping1() {
  var x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// 'in block' 'in block'

function mysteryScoping2() {
  const x = 'out of block';
  if (true) {
    const x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// identifier 'x' has already been declared

function mysteryScoping3() {
  const x = 'out of block';
  if (true) {
    var x = 'in block';
    console.log(x);
  }
  console.log(x);
}
// identifier 'x' has already been declared

// function mysteryScoping4() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   console.log(x);
// }
// 'in block', 'out of block'

// function mysteryScoping5() {
//   let x = 'out of block';
//   if (true) {
//     let x = 'in block';
//     console.log(x);
//   }
//   let x = 'out of block again';
//   console.log(x);
// }
// syntax error

// madLib
function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}.`
}

madLib('make', 'best', 'guac');

// isSubstring
function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

isSubstring("time to program", "time")
isSubstring("Jump for joy", "joys")

// Phase 2 - JS Looping Constructs
// fizzBuzz
function fizzBuzz(arr) {
  const fizzy = [];
  arr.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)) {
      fizzy.push(el);
    }
  });
  return fizzy
}

fizzBuzz([2,5,20,18,30,6,9]);

// isPrime
function isPrime(number) {
  if (number < 2) { return false; }
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
}

isPrime(2);
isPrime(10);
isPrime(15485863);

// sumOfNPrimes
function sumOfNPrimes(n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }
  return sum;
}

sumOfNPrimes(4)
