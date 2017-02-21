class Timer
   #write your code here
attr_reader :seconds

def initialize
	@seconds = 0
end
def seconds= number
	@seconds = number
	
end


def time_string (time=@seconds)
	hours = time / 3600
	minutes = (time % 3600) /60
	time = (time % (3600)) % 60

	padded(hours) + ':' + padded(minutes) + ':' + padded(time)
	
end

def padded num
	if num.to_s.length == 1
		"0" + num.to_s
	else
		num.to_s
	end
	
end


end
