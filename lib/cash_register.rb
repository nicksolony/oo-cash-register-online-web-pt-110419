class CashRegister
require "pry"
  attr_accessor :total, :discount, :items, :last_item
  
  def initialize (discount=nil)
    @total = 0      				# on initialization set total to 0
	@discount = discount 			# takes discount in if it's provided otherwise discount is nil
	@items = []             		#items list is empty at the start
	
  end
  
  def total
	  @total							#returns current total
  end
  
  def add_item (title,price,quantity = 1)		
  # need to add item name, price and optional 	quantity, then increase total by price * quantity.
  	  n = quantity
	  @last_item = 0
	  while n > 0 do
	  @total += price
	  @items << title
	  @last_item+=price
	  n=n-1
	  end
  end
	def apply_discount			
			#convert discount into float, calculate amount of discount and convert it back to interger, then reduce total
		if @discount==nil
			"There is no discount to apply."
		else
			@total = @total - (@total*@discount.to_f/100).to_i
			"After the discount, the total comes to $#{@total}."
		end	
	end
	
	def items
		@items
	end
	
	def void_last_transaction
		
		@total = @total - @last_item
	
	end

end