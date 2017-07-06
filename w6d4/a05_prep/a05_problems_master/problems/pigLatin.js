// Write a method that translates a sentence into pig latin. You may want a helper method.
// 'apple' => 'appleay'
// 'pearl' => 'earlpay'
// 'quick' => 'ickquay'


const pigLatin = (sentence) => {

  const words = sentence.split(" ");
  const wordPiggy = words.map( (wrd) => piggy(wrd));

  return wordPiggy.join(" ");

};


function piggy(word) {
  const vowels = "aeio".split("");
  for (let i = 0; i < word.length; i++) {
    if (vowels.includes(word[i])) {
      return word.slice(i) + word.slice(0, i) + "ay";
    }
  }
}

console.log(pigLatin("quick"));
console.log(pigLatin("banana"));
console.log(pigLatin("apple"));
console.log(pigLatin("a banana each day helps you learn javascript"));
