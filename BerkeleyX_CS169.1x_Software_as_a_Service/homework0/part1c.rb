class BookInStock

	def initialize(isbn=nil, price=0)
		
		 raise(ArgumentError, ":isbn must not be empty") if isbn == nil || isbn == ''
		 raise(ArgumentError, ":price must be greater than 0") if price.to_i <= 0


		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end

	def isbn=(isbn)
		@isbn = isbn
	end

	def price
		@price
	end

	def price=(price)
		@price = price
	end
	
	def price_as_string
		'$' + '%.2f' % @price
	end

end
