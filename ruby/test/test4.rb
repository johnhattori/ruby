def CalcIt
	
	puts "Do you want a (b)asic or (a)dvance calculator or quit?"
	answer = gets.chomp
	
	if answer == "b"
		puts "Would you like to (a)dd, (s)ubtract, (m)ultiply or (d)ivide?"
		basic_operation = gets.chomp

		value1 = -1
		value2 = -1
		while value1 <= 0 || value1 > 9 || value2 <= 0 || value2 > 9
			
			puts "Enter first number: "
			value1 = gets.chomp.to_i
			puts "Enter second number: "
			value2 = gets.chomp.to_i

		end

		 if basic_operation == "a"
		   puts add(value1, value2)
         end

         if basic_operation == "s"
         	puts subtract(value1, value2)
         end

         if basic_operation == "m"
         	puts multiply(value1, value2)
		 end

         if basic_operation == "d"
		    puts divide(value1, value2)
         end

    elsif answer == "a"

		puts "Would you like to calculate (e)xponents or the calculate (s)quare root of a number?"
		fancy = gets.chomp
		  if fancy == "e"
		    puts "Enter the base: "
		    base = gets.chomp.to_i
		    puts "Enter the exponent: "
		    ex = gets.chomp.to_i
		    puts exponent(base,ex)
 
		else fancy == "s"
			puts "What number would you like the square root of: "
			s_num = gets.chomp.to_i
			puts square(s_num)
		end

	elsif answer == "quit"
		return

	else CalcIt()

    end


CalcIt()

	
end

def add (x,y)
	return x + y
end

def subtract(x,y)
	return x - y
end

def multiply(x,y)
	return x * y
end

def divide(x,y)
	return x / y
end

def exponent(x,y)
	return x ** y
end

def square(x)
	Math.sqrt(x)
end

CalcIt()
