def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |item|
    item[:item] == name 
  end 
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart.uniq.map do |item|
    items=cart.select do |food|
      food == item
    end 
    item[:count]=items.count
    item
  end


end


  