function merge(arr1, arr2) {
  const sorted = [];
  while (arr1.length > 0 && arr2.length > 0) {
    if (arr1[0] < arr2[0]) {
      sorted.push(arr1.shift());
    } else {
      sorted.push(arr2.shift());
    }
  }

  return sorted.concat(arr1).concat(arr2);

}

function mergeSort(array) {
  if (array.length <= 1) {
    return array;
  }

  const mid = Math.floor(array.length / 2);
  const leftArr = array.slice(0, mid);
  const rightArr = array.slice(mid);

  return merge(mergeSort(leftArr), mergeSort(rightArr));

}

console.log(mergeSort([3,1,5,2,4]));
