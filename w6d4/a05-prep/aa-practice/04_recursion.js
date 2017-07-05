// Write a method, `digital_root(num)`. It should Sum the digits of a positive
// integer. If it is greater than 10, sum the digits of the resulting number.
// Keep repeating until there is only one digit in the result, called the
// "digital root". **Do not use string conversion within your method.**
// You may wish to use a helper function, `digital_root_step(num)` which performs
// one step of the process.


// returns all subsets of an array


// make better change problem from class
// make_better_change(24, [10,7,1]) should return [10,7,7]
// make change with the fewest number of coins
// To make_better_change, we only take one coin at a time and
// never rule out denominations that we already used.
// This allows each coin to be available each time we get a new remainder.
// By iterating over the denominations and continuing to search
// for the best change, we assure that we test for non-greedy uses
// of each denomination.


// Using recursion and the is_a? method,
// write an Array#deep_dup method that will perform a "deep" duplication of the interior arrays.



// Write a recursive method that returns the sum of all elements in an array


// Implement a method that finds the sum of the first n
// fibonacci numbers recursively. Assume n > 0


// Write a recursive function that returns the prime factorization of
// a given number. Assume num > 1
// prime_factorization(12) => [2,2,3]



// Write a recursive method that returns all of the permutations of an array


// Write a recursive method that returns the first "num" factorial numbers.
// Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
// is 1!, the 3rd factorial is 2!, etc.



// Write a recursive method that takes in a string to search and a key string.
// Return true if the string contains all of the characters in the key
// in the same order that they appear in the key.
//
// string_include_key?("cadbpc", "abc") => true
// string_include_key("cba", "abc") => false



// Write a recursive method that takes in a base 10 number n and
// converts it to a base b number. Return the new number as a string
//
// E.g. base_converter(5, 2) == "101"
// base_converter(31, 16) == "1f"




// CHALLENGE: Eight queens puzzle precursor
//
// Write a recursive method that generates all 8! possible unique ways to
// place eight queens on a chess board such that no two queens are in
// the same board row or column (the same diagonal is OK).
//
// Each of the 8! elements in the return array should be an array of positions:
// E.g. [[0,0], [1,1], [2,2], [3,3], [4,4], [5,5], [6,6], [7,7]]
//
// My solution used 3 method parameters: current_row, taken_columns, and
// positions so far



// return the sum of the first n even numbers recursively. Assume n > 0
