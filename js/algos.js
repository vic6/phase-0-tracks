/*
Iterate over items in list
Set a length counter and a max length counter and largest word iterate over letters in current list item
if length is greater than max length, largest word is set to current item.
*/

lists = ["long phrase","longest phrase","longer phrase"]
ice_cream = ['fudge', 'chocolate', 'pineapple plumbus8', 'strawberry tornado']

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


console.log(largestItem(lists))
console.log(largestItem(ice_cream))