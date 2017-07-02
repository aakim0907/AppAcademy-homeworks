// Array#bubbleSort
const bubbleSort = function (array) {
  let needSorting = true;

  while ( needSorting ) {
    needSorting = false

    for (var i = 0; i < array.length; i++) {
      if (array[i] > array[i + 1]) {
        [array[i], array[i + 1 ]] = [array[i + 1], array[i]]
        needSorting = true;
      }
    }
  }

  return array;
};

console.log(bubbleSort([3,2,1,6,8]));

// String#substrings
const substrings = function(string) {
  const subs = [];
  for (var i = 0; i < string.length; i++) {
    for (var j = i + 1; j <= string.length; j++) {
      subs.push(string.slice(i, j))
    }
  }
  return subs;
}

console.log(substrings("ruby"));
