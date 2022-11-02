function titleize(names, callback) {
  let titleized = names.map((name) => callback(name));
  return titleized;
}

function print(name) {
  return `Mx. ${name} Jingleheimer Schmidt`;
}
//testing
let titleizeNames = titleize(["Mary", "Brian", "Leo"], print);

for (let name of titleizeNames) {
  console.log(name);
}

// phase2
function Elephant(name, height) {
  this.name = name;
  this.height = height;
  this.tricks = [];
}

Elephant.prototype.trumpet = function () {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRR!!!!!!'`);
};

Elephant.prototype.grow = function () {
  this.height += 12;
  return this;
};

Elephant.prototype.addTrick = function (trick) {
  this.tricks.push(trick);
  return this;
};

Elephant.prototype.play = function () {
  let randomIndex = Math.floor(Math.random() * this.tricks.length);
  console.log(`${this.name} is ${this.tricks[randomIndex]}`);
};
