//range(start, end)
function myRange(start, end) {
  if (start === end) {
    return [start]
  } else {
    return [start].concat(myRange(start+1,end))
  }
}

console.log(myRange(2,5));

// sumRec(arr)
function sumRec(array) {
  let arr = array;
  if (arr.length === 1) {
    return arr[0];
  } else {
    return arr[0] + sumRec(arr.slice(1))
  }
}

console.log(sumRec([1,2,3,4,5]));

// fibonacci(n) - receives an integer, n, and returns the first n Fibonacci numbers
function fibonacci(n) {
  if ( n <= 2 ) {
    return [1, 1].slice(0, n);
  } else {
    const prev = fibonacci(n - 1);
    const idx = prev.length - 1;
    const nextItem = prev[idx - 1] + prev[idx];
    prev.push(nextItem);
    return prev;
  }
}

console.log(fibonacci(5));

// bsearch(arr, target)
function bsearch(array, target) {
  const mididx = Math.floor(array.length);

  if (array[mididx] === target) {
    return mididx;
  } else if (target < array[mididx]) {
    return bsearch(array.slice(0, mididx), target)
  } else {
    return bsearch(array.slice(mididx + 1), target) + (mididx + 1)
  }
}

console.log([0,1,2,3,4,5,6], 1);
console.log([0,1,2,3,4,5,6], 5);


// mergesort(arr) - recieves an array, returns a sorted copy of the array by implementing merge sort sorting algorithm
function mergeSort(array) {
  if (array.length < 2) {
    return array;
  } else {
    const middle = Math.floor(array.length / 2);

    const left = mergeSort(array.slice(0, middle));
    const right = mergeSort(array.slice(middle));

    return merge(left, right);
  }
}

function merge(arr1, arr2) {
  let sorted = [];
  while (arr1.length > 0 && arr2.length > 0) {
    if (arr1[0] >= arr2[0]) {
      sorted.push(arr2.shift())
    } else {
      sorted.push(arr1.shift())
    }
  }
  sorted = sorted.concat(arr1).concat(arr2);
  return sorted;
}


// subsets(arr)
function subsets(array) {
  if (array.length === 0) {
    return [[]];
  } else {
    const first = array[0];
    const withoutFirst = array.slice(1);
    const withFirst = withoutFirst.map(el => [first].concat(el))
    return withFirst;
  }

}

console.log(subsets([1,2,3]));
