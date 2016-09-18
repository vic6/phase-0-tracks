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