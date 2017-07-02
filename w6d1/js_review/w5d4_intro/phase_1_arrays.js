// Array#uniq
Array.prototype.uniq = function () {
  const returnUniq = [];
  for (var i = 0; i < this.length; i++) {
    if ( !returnUniq.includes(this[i])) {
      returnUniq.push(this[i])
    }
  }
  return returnUniq;
};

console.log("Array#uniq");
console.log([3,2,-3,1,-2,3].uniq());

// Array#twoSum
// O(N ^ 2)
Array.prototype.twoSum1 = function () {
  const returnSums = [];
  for (var i = 0; i < this.length; i++) {
    for (var j = i + 1; j < this.length; j++) {
      if (this[i] + this[j] === 0) {
        returnSums.push([i,j]);
      }
    }
  }
  return returnSums;
};

// O(N)
Array.prototype.twoSum2 = function() {
  var pairs = [];
  const indexHash = {};

  this.forEach((el, idx) => {
    if (indexHash[el * -1]) {
      const newPairs = indexHash[el * -1].map((prevIdx) => [prevIdx, idx]);
      pairs = pairs.concat(newPairs);
    }

    indexHash[el] ? indexHash[el].push(idx) : indexHash[el] = [idx];
  });

  return pairs;
};

console.log("Array#twoSum2");
console.log([3,2,-3,1,-2,3,-3].twoSum2());

// Array#transpose
Array.prototype.transpose = function () {
  const returnTrans = [];
  // for each row, get cols
  for (var col = 0; col < this[0].length; col++) {
    const inner = [];
    for (var row = 0; row < this.length; row++) {
      inner.push(this[row][col]);
    }
    returnTrans.push(inner);
  }
  return returnTrans;
};

console.log("Array#transpose");
console.log([[1,2,3],[4,5,6],[7,8,9]].transpose());
