# Assessment 5 Study Guide

## Study
This is a (hopefully but probably not) exhaustive list of problems that *could* be on
A05. The problems are taken from A01 (translated from Ruby to JS),
the curriculum on days W5D2 - W5D5 of Javascript, or have been
mentioned by a T.A. or a/A alumni.

### Hot Study Tips from Jeff Fiddler
* Know how to write prototypal inheritance using Surrogates, Object.create, and the ES6 Class.
* Know how to work your way around Chrome Dev Tools (thats where the specs will be run for the test).
* Be able to write any function as a monkey patch or on the global scope (where applicable).
* Love yourself and sleep and eat veggies.

### Debug in Chrome!
To debug, open index.html and replace the problems filename in the
script tag, open index.html in the browser, and use Chrome Dev Tools.
This debugging tool has been a game-changer for me for solving these problems.
Definitely recommend.

*If anyone is so inclined to help me with the monotonous task of webpacking this file
for easier Chrome debugging, Slack me.*


# The Problems
*Any emphasized problem was mentioned explicitly by a T.A.*

## New from JavaScript Curriculum
* rangeRecursive - O
* userAddNumbers
* sumArgs (sum with any number of args) - O
* *myBind (with or without args)* - O
* *inherits (be able to write using surrogates, object.create, and ES6)* - 1
* *curriedSum* - 0
* *curry* - 1

## Recursion:
* baseConverter
* digitalRoot
* deepDub
* exponents
* factorialsRec - 1
* fibSum
* firstEvenNumsSum
* permutations
* primeFactorization
* recSum
* stringIncludeKey
* *subsets* - 1

## Search and Sort
* *binarySearch* - 1
* *bubbleSort* - 0
* jumbleSort
* *mergeSort* - 0
* *quickSort* - 0

## Enumerable
* myEvery (my_all in Ruby)
* myFlatten
* myForEach
* mySome (my_any in Ruby)
* myJoin
* myInject - 0
* myReject (no built-in equivalent in JS)
* myReverse
* myRotate
* mySelect (in JS, select is .filter())
* *myTranspose* - 0
* *myZip* - 0

## Iteration:
* caesarsCipher
* pigLatin - 0
* realWordsInString - 0
* symmetricSubStrings - 1
* titleize
* twoSum - 0

## Super Easy Warm Ups:
* doubler - O
* factors - O
* median
* dups
* primes

### Algos That You Won't Find:

* makeBetterChange (Maybe in version 2.0, but right now I ain't got time for that.)
* Eight Queens (same)

*If you have a solution to any of these in JS, send it over and we can add 'em in.*

### Not very FAQ:
* Why use ES5 and ES6 together so much? Atom Shortcuts support ES5 syntax.
  * (i.e. type 'for' and hit tab and it produces a for loop using 'var' instead of let.)
  * (i.e. number 2 type 'proto' and hit tab and you get an ES5 monkey patch function set up.)
