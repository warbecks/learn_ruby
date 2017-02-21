class Book
	attr_reader :title
	def title= (name_of_book)
		word_array = name_of_book.split(" ")
		title_array = []
		little_words = %w(the a an on and of in is)
		word_array.each do |word|
			if little_words.include? word.downcase
				word = word
			else 
				word = word.capitalize
			end
			title_array.push word
		end

		final_string = title_array.join(' ').slice(0,1).capitalize + title_array.join(' ').slice(1..-1)

		@title = final_string
		
	end

end