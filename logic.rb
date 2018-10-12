# => logic.rb/mathCalcs.rb - a program for calculating bitwise answers for
# n inputs and binary mathematics
# => Author: Fadini
# => 10/12/2018
require './mathCalcs'
puts "To start, input a number for selection."
puts "[1] AND 		-=Binary Mathematics=-"
puts "[2] OR 			[7] ADDITION"
puts "[3] XOR 		[8] SUBTRACTION"
puts "[4] NOR 		[9] MULTIPLICATION"
puts "[5] NAND 		"
puts "[6] NXOR"


input = gets.chomp.to_i

math = MathCalcs.new


puts("How many inputs will there be?")
inputNum = gets.chomp.to_i
inputArray = Array.new(inputNum) {|i| i.to_i}

inputArray.each do |n|
	puts "Enter number #{n+1}"
	input1 = gets.chomp.to_i(2)
	inputArray[n] = input1
end


if input == 1
	ans = math.andBitwise(inputArray)
	printAns = ans.to_s(2)
	puts "The AND operation is #{printAns}"
elsif input == 2
	ans = math.orBitwise(inputArray)
	printAns = ans.to_s(2)
	puts "The OR operation is #{printAns}"
elsif input == 3
	ans = math.xorBitwise(inputArray)
	printAns = ans.to_s(2)
	puts "The XOR operation is #{printAns}"
elsif input == 4
	ans = math.orBitwise(inputArray)
	output = ans.to_s(2)
	if output == '0'
		puts "The NOR operation is 1"
	else 
		puts "The NOR operation is 0"
	end
elsif input == 5
	ans = math.andBitwise(inputArray)
	output = ans.to_s(2)
	if output == '0'
		puts "The NAND operation is 1"
	else 
		puts "The NAND operation is 0"
	end
elsif input == 6
	ans = math.xorBitwise(inputArray)
	output = ans.to_s(2)
	if output == '0'
		puts "The NXOR operation is 1"
	else 
		puts "The NXOR operation is 0"
	end
elsif input == 7
	ans = math.addition(inputArray)
	printAns = ans.to_s(2)
	puts "The total addition is #{printAns}"
elsif input == 8
	ans = math.subtraction(inputArray)
	printAns = ans.to_s(2)
	puts "The total subtraction is #{printAns}"
elsif input == 9
	ans = math.multiplication(inputArray)
	printAns = ans.to_s(2)
	puts "The total multiplication is #{printAns}"
# elsif input == 10
# 	ans = math.division(inputArray)
# 	printAns = ans.to_s(2)
# 	puts "The total division is #{printAns}"
end