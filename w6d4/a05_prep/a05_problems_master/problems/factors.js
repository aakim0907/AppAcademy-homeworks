const factors = (num) => {
  let facArr = [];
  for (let i = 1; i < num; i++) {
    if (num % i === 0) {
      facArr.push(i);
    }
  }

  return facArr;
};

console.log(factors(10));
