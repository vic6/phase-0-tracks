ice_cream_shop = {
  closet: ['mop', 'bucket', 'pine-sol'],
  freezer: {
    ice_cream: ['bath water', 'black licorice', 'pine-sol'],
    yogurt: ['rotten raspberry', 'corn and tomato swirl', 'sumac surprise'],
  },
  dining_room: {
    counter: {
      register: ["counterfeit bills", 'paper clips', 'rollie pollies'],
      cone_displey: ['cricket flour cone', 'rice cone', 'sugar cone']
    }
  } 
}

#get last item in closet
p ice_cream_shop[:closet][-1]

#get first item register
p ice_cream_shop[:dining_room][:counter][:register][0]

#get all types of cones
p ice_cream_shop[:dining_room][:counter][:cone_displey]