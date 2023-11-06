## Day 5 Questions

1. What is a Hash, and how is it different from an Array?
A hash is an unordered collection of data where 'keys' are associated with a 'value pair'.

1. In the space below, create a Hash stored to a variable named `pet_store`.  This hash should hold an inventory of items and the number of that item that you might find at a pet store.
pet_store = {dog_food: 35, cat_food: 62, dog_toys: 78, cat_toys: 4}

1. Given the following `states = {"CO" => "Colorado", "IA" => "Iowa", "OK" => "Oklahoma"}`, how would you access the value `"Iowa"`?
states["IA"]

1. With the same hash above, how would we get all the keys?  How about all the values?
states.keys
states.values

1. What is another example of when we might use a hash?  In your example, why is a hash better than an array?
When you have data that is only relevant to its pair or key. For instance, the pet_store hash has many different items that all have different values, but since they are associated with a specific key, its much easier to understand what the values actually mean to us in a real world sense. If it were an array, you would need to memorize or know the order that all the values are listed in to know how many of each item those values actually represent.

1. What questions do you still have about hashes?
I'm curious about more ways that hashes and arrays are used in more practical ways. Where do we see hashes in the programs/apps we use in day to day life?