def echo(says)
	return says
end

def shout(says)
	return says.upcase
end

def repeat(says, n=2)
	return [says] * n * ' '
end

def start_of_word(says, n)
	return says[0..n-1]
end

def first_word(says)
	return says.split[0]
end

def titleize(says)
	says = says.capitalize
	little_words = ["and", "over", "the"]
	new_says = says.split(" ").map {|word|
		if not little_words.include?(word)
			word.capitalize
		else
			word
		end}
		return new_says.join(" ")
end