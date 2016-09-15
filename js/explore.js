/*Create a new variable to hold reversed string
iterate over the last index of the string. Add the letter to the new variable
continue until index of string is 0
*/



function reverse(string) {
  var rev = '';
  for (var i = string.length - 1; i >= 0; i--) {
    rev += string[i];
  }
  return rev;
}

var chocolate = reverse('sauce')

if (true) {
  console.log(chocolate)
}
