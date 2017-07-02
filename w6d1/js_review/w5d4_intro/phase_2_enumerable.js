// Array#myEach(callback)
Array.prototype.myEach = function (cb) {
  for (var i = 0; i < this.length; i++) {
    cb(this[i]);
  }
};

console.log("Array#myEach");
console.log([1,2,3].myEach(el => console.log(el)));

// Array#myMap(callback) - receives a callback function, returns a new array of the results of calling the callback function on each element of the array
// should use myEach and a closure
Array.prototype.myMap = function (cb) {
  const mapped = [];
  this.myEach(el => mapped.push(cb(el)));
  return mapped;
};

console.log("Array#myMap");
console.log([1,2,3].myMap(el => el * 2));

// Array#myReduce(callback, [initialValue])
Array.prototype.myReduce = function (cb, initialValue) {
  const arr = this;

  if (!initialValue) {
    initialValue = this[0];
    arr = arr.slice(1);
  }

  let result = initialValue;

  arr.myEach(el => result = cb(result, el));

  return result;
};

// // without initialValue
[1, 2, 3].myReduce(function(acc, el) {
  return acc + el;
}); // => 6
//
// // with initialValue
[1, 2, 3].myReduce(function(acc, el) {
  return acc + el;
}, 25); // => 31
