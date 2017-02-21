def translate(str)
	vowels = ['a', 'e', 'i', 'o' , 'u']
	str = str.split(' ')
	str.length.times do |i|
		if vowels.include?(str[i][0,1])
			str[i] += 'ay'
		else
			str[i].length.times do |x|
				if vowels.include?(str[i][x,1]) and str[i][x -1,2] != 'qu'
					str[i] = str[i][x, str[i].length - x] + str[i][0,x] + 'ay'
					break
				end
			end
		end
	end
	str.join(' ')

end