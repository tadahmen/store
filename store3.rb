class Product
  attr_accessor :productname, :prise
end

class Animal<Product
  attr_accessor :name, :behaviour
  def initialize
    @productname=:een_dier
    @prise=:"1"
    @behaviour=:breaths
  end
end

class Plant<Product
  attr_accessor :eadability
end

class Shop
  def initialize
    @inshop=[]
  end

  def inshop
    return @inshop
  end

  def add_product (product)
    @inshop.push(product)
  end

  def inventory
    index = 0
    @inshop.each do |item|
      puts "#{index} #{item.productname} (Eu #{item.prise})"
      index += 0
    end
  end

  def get_item_by_index(index)
    return @inshop[index]
  end

  def search_shop (product)
    @inshop.each do |item|
      if
        item.productname==product
        return item.productname
      end
    end
  end
end

class Cart
  def initialize
    @incart=[]
  end
  def add_product (product)
    @incart.push(product)
  end
  def inventory
    @incart.each do |item|
      puts "#{item.productname}"
    end
  end
  def search_cart (product)
  end
end

#==================================================================================

Strange_Bob=Shop.new
My_Cart=Cart.new
axolotl=Animal.new
axolotl.name=:Alex
axolotl.productname=:axolotl
axolotl.prise=:"2000"
parrot=Animal.new
parrot.productname=:parrot
parrot.prise=:"15"
Strange_Bob.add_product(axolotl)
Strange_Bob.add_product(parrot)
My_Cart.add_product(axolotl)

#===================================================================================

def pick_color
  puts "please choose a color; blue or yellow"
  color=gets.chomp.downcase
  if color!=("blue"||"yellow")
    puts "Sorry, but I don't speak your alien languige. I only speak blue or yellow!
    pick again."
    pick_color
  else
    "Ah, very good choise, #{color} is my favourite languige!\n"
    return color
  end
end

#=====================================================================================

puts "Welcome in my store"
#color=pick_color

#this all works well
# puts "You can see what I have in this store:"
# Strange_Bob.inventory
# puts "Let me know what you want\n"
# choise=gets.chomp.to_i


#to test
puts axolotl.name
puts Strange_Bob.inshop[0].productname
puts Strange_Bob.get_item_by_index(choise)

#the rest:
#My_Cart.add_product(choise)
#to test:
#My_Cart.inventory

#Checks if product exists: (doesn't work yet)
#puts Strange_Bob.search_shop(choise)
#if Strange_Bob.search_shop(choise)==choise
#  puts "Ah, the #{choise}!"
#else
#  puts "Sorry, don't have that"
#end
