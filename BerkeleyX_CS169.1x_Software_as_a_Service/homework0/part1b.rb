def hello name
	"Hello, #{name}"
end

def starts_with_consonant? string

	first_character = string[0,1].to_s.downcase 

	exclude = ["1","2","3","4","5","6","7","8","9","0","a","e","i","o","u"]

	if not exclude.include?(first_character) and first_character.match(/^[[:alpha:]]$/)
		return true
	else
		return false
	end
end

def binary_multiple_of_4? int
	if int.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/) == nil || int.to_s == "0"
		return false
	end
	if int.to_i % 4 == 0
		return true
	else 
		return false
	end
end

puts binary_multiple_of_4?(0)


