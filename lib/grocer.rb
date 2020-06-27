require 'pry'
cart = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "AVOCADO", :price => 3.00, :clearance => true },
  {:item => "KALE", :price => 3.00, :clearance => false}
]

def find_item_by_name_in_collection(name, collection)
  # Implement me first!	  # Implement me first!
  #	  #
  # Consult README for inputs and outputs	  # Consult README for inputs and outputs
  found_item = nil
  collection.each do |count|
    if count[:item] == name
      found_item = count
    end
  end
  return found_item
end


def consolidate_cart(cart) 
  #create an output hash 
  output_cart = []

  cart.each_with_index do |item, index| 
    item_hash = find_item_by_name_in_collection(cart[index][:item], output_cart) #make use of our def above since its purpose is find item in cart
    
    #based on if item_hash is true (the item exists in our output_cart)
      if item_hash != nil
         item_hash[:count] += 1 #remember in item_hash above we are using the output_cart parameter thus this will be updating the output_cart!!
        # p output_cart
      else 
        new_entry = {
          :item => cart[index][:item],
          :price => cart[index][:price],
          :clearance => cart[index][:clearance],
          :count => 1
        }
        output_cart << new_entry
        #p output_cart
      end
  end
  output_cart
end



 # binding.pry 