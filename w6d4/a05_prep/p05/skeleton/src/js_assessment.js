// write String.prototype.mySlice. It should take a start index and an
// (optional) end index.
String.prototype.mySlice = function (start, end) {
  let sliced = "";
  if (typeof end === "undefined") {
    end = this.length;
  }

  for (let i = start; i < end && i < this.length; i++) {
    sliced += this[i];
  }

  return sliced;
};

// write Array.prototype.myReduce (analogous to Ruby's Array#inject).
Array.prototype.myReduce = function (callback, acc = this.shift()) {
  for (let i = 0; i < this.length; i++) {
    acc = callback(acc, this[i]);
  }
  return acc;
};

// write Array.prototype.quickSort(comparator). Here's a quick refresher if
// you've forgotten how quickSort works:
//   - choose a pivot element from the array (usually the first)
//   - for each remaining element of the array:
//     - if the element is less than the pivot, put it in the left half of the
//     array.
//     - otherwise, put it in the right half of the array.
//   - recursively call quickSort on the left and right halves, and return the
//   full sorted array.
Array.prototype.quickSort = function (comparator) {
  if (this.length <= 1) return this;

  if (typeof comparator !== "function") {
    comparator = function(x, y) {
      if (x < y) {
        return -1;
      } else if (x === y) {
        return 0;
      } else {
        return 1;
      }
    };
  }

  const pivot = this[0];
  const left = [];
  const right = [];

  for (let i = 1; i < this.length; i++) {
    if (comparator(this[i], pivot) <= 0) {
      left.push(this[i]);
    } else {
      right.push(this[i]);
    }
  }

  return left.quickSort(comparator)
      .concat([pivot])
      .concat(right.quickSort(comparator));
};

// write myFind(array, callback). It should return the first element for which
// callback returns true, or undefined if none is found.
function myFind(array, callback) {
  for (let i = 0; i < array.length; i++) {
    if (callback(array[i])) {
      return array[i];
    }
  }
}

// write sumNPrimes(n)
function isPrime(num) {
  if (num < 2) {
    return false;
  } else {
    for (let i = 2; i < num; i++) {
      if (num % i === 0) {
        return false;
      }
    }
  }
  return true;
}

function sumNPrimes(n) {
  let sumPrimes = 0;
  let primeCount = 0;
  let num = 1;

  while (primeCount < n) {
    if (isPrime(num)) {
      sumPrimes += num;
      primeCount++;
    }
    num++;
  }

  return sumPrimes;
}

// write Function.prototype.myBind.
Function.prototype.myBind = function (ctx, ...bindArgs) {
  return (...callArgs) => this.apply(ctx, bindArgs.concat(callArgs));
};

// write Function.prototype.inherits.
Function.prototype.inherits = function (parent) {
  // this.prototype = Object.create(parent.prototype);
  function Surrogate() {}
  Surrogate.prototype = parent.prototype;
  this.prototype = new Surrogate();
  this.prototype.constructor = this;
};
