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
