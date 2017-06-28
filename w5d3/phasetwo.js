// Phase 1 : Callbacks
nameList = ["Alex", "Carrie", "Daniel", "Evelyn"]

// solution
function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
};

titleize(nameList, (names) => {
  names.forEach(name => console.log(name));
});

// Phase 2 : Constructors, Prototypes, and 'this'
function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumphet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRR!!!'`)
};

Elephant.prototype.grow = function () {
  this.height = this.height + 12;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function () {
  trickIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[trickIndex]}!`);
}

// Phase 3 : Function Invocation

// Phase 4 : Closures
