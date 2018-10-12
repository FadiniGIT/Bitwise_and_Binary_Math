class MathCalcs

	def andBitwise(array)
	total = 1

	array.each do |ba|
		total = total & ba
	end
	return total
end

def orBitwise(array)
	total = 0

	array.each do |bo|
		total = total | bo
	end
	return total
end

def xorBitwise(array)
	total = 0

	array.each do |bx|
		total = total ^ bx
	end
	return total
end

def addition(array)
	total = 0

	array.each do |a|
		total = total + a
	end
	return total
end

def subtraction(array)    
	total = array[0] *2
	

	array.each do |s|
		total = total - s
	end
	return total
end

def multiplication(array)
	total = 1

	array.each do |a|
		total = total * a
	end
	return total
end

def division(array)
	total = array[0] ^2
	puts total

	array.each do |a|
		total = total / a
	end
	return total
end
	
end