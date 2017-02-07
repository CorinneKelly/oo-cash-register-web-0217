class CashRegister

	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
	end

	def discount
		@discount
	end

	def total		
		@total
	end

	def total=(amount)
		@total += amount
	end

	def add_item(title, price, quantity=1)
		# item_hash[title] = [price, quantity]
		@previous_total = @total
		item_price = price * quantity
		@total += item_price
		quantity.times do
			@items << title
		end
	
	end

	def apply_discount
		if @discount == 0
			"There is no discount to apply."
		else
			@total *= (1 - @discount/100.0)
			"After the discount, the total comes to $#{@total.round}."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = @previous_total
	end

end
