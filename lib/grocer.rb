require 'pry'

def find_item_by_name_in_collection(item, cart)
  if cart == nil 
    return nil
  end 
  new_hash = cart.select {|hash| hash[:item] == item}
  new_hash[0]
end


def consolidate_cart(cart)
  new_array = []
  cart.map do |hash|
    if find_item_by_name_in_collection(hash[:item],new_array)
      index = new_array.find_index{|grocery| grocery[:item] == hash[:item]}
      new_array[index][:count] += 1
    else   
      hash[:count] = 1
    new_array.push(hash)
    end 
  end 
  p new_array
end

cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]
  
consolidate_cart(cart)