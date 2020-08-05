require 'pry'

def find_item_by_name_in_collection(item, cart)
  new_hash = cart.select {|hash| hash[:item] == item}
  new_hash[0]
end


def consolidate_cart(cart)
  new_array = cart.each do |hash|
    find_item_by_name_in_collection(hash[:item],new_array) ? hash[:count] += 1 : hash[:count] = 1
    binding.pry
  end 
  new_array
end


  