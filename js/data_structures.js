var colors = ['blue', 'red', 'green', 'orange'];
var names = ['Ed', 'Ted', 'Bill', 'Phil'];

colors.push('yellow');
names.push('Lee');
console.log(colors);
console.log(names);

var horses = {};
for(var i = 0; i < names.length; i++) {
  horses[names[i]] = colors[i];
}

console.log(horses);

function Car(make, age, top_speed) {
  this.make = make;
  this.age = age;
  this.top_speed = top_speed;

  this.rev = function() { console.log("VROOOOMMMMM!!!"); };
  console.log('CAR INITIALIZATION COMPLETE');
}

var newCar = new Car('toyota', 50, 120);
newCar.rev();

var oldCar = new Car('bugatti', 90, 240);
oldCar.rev();
console.log(oldCar.age)

for (var key in horses) {
  console.log('obj:' + key + " = " + horses[key]);
}