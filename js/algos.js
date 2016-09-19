/*
Iterate over items in list
Set a length counter and a max length counter and largest word iterate over letters in current list item
if length is greater than max length, largest word is set to current item.
*/

lists = ["long phrase","longest phrase","longer phrase"]
ice_cream = ['fudge', 'chocolate', 'pineapple plumbus', 'strawberry tornado']


function largestItem(list) {
  max = 0;
  current_max = 0;
  max_phrase = '';
  for (var item = 0; item < list.length; item++) {
    //console.log(lists[item]);
    for (var word = 0; word < list[item].length; word ++) {
      //console.log(lists[item][word])
      current_max += 1;
    }
    if (current_max > max) {
      max = current_max;
      max_phrase = list[item];
    }
    current_max = 0;
  }
  return max_phrase
}

function matching(hash1, hash2) {
  for(var key in hash1) {
    for(var key2 in hash2) {
      if (hash1[key] == hash2[key2]) {
        return true;
      }
    }
  }
  return false
}

//Release 0
console.log(largestItem(lists))
console.log(largestItem(ice_cream))

//Release 1
test1 = {name: "Tamir", age: 51}
test2 = {name: "Tamir", age: 54}

console.log(matching(test1, test2))
console.log(matching({name: "Bob", age: 98}, {name: "Tamir", age: 51}))