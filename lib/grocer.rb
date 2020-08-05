def find_item_by_name_in_collection(item, cart)
  new_hash = cart.select {|hash| hash[:item] == item}
  new_hash[0]
end


def consolidate_cart(cart)
cart.reduce({}) {|key,value| find_item_by_name_in_collection(key[:item]) ? cart[key]

end


  