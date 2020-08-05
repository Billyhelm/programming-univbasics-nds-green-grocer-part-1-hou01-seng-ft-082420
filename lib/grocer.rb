require 'pry'

def find_item_by_name_in_collection(item, cart)
  if cart == nil 
    return nil
  end 
  new_hash = cart.select {|hash| hash[:item] == item}
  new_hash[0]
end


def consolidate_cart(cart)
  new_array.push(cart.each do |hash|
    find_item_by_name_in_collection(hash[:item],new_array) ? hash[:count] += 1 : hash[:count] = 1)
    binding.pry
  end 
  p new_array
end

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]
  
consolidate_cart(cart)