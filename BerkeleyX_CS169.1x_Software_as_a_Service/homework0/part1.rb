def sum values
	total = 0
	values.each { |v| total += v }
	total
end

def max_2_sum values
	if values.empty?
		return 0
	else
		total = 0
		values.sort_by(&:to_i).reverse[0,2].each { |v| 
			total += v
		}
		total
	end
end

def sum_to_n? values, target
	if values.empty? 
		if target == 0
			return true
		elsif target > 0
			return false
		end
	else
		values.each_with_index do |item, index|
			values.each_with_index do |sib, sib_index|
				if index !=sib_index
					if item+sib == target
						return true
					end
				end
			end	
		end	
	end	
	return false
end
