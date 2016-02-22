def run()
  continue = true
  while continue == true
    operators = {"+" => :+, "-" => :-, "*" => :*, "/" => :/, }
    to_calculate = []
    puts '''Keep calcing or type "Q" to quit''' 
    string = gets.strip
      if string == "Q" || string == "q"
        exit
      end
        input_array = string.split(" ")
        input_array.each do |i|
      
      if operators.keys.include?(i)
        to_calculate << operators[i]
      else /\d/.match(i)
        to_calculate << i.to_f
      end
      end
    puts "= #{eval(to_calculate.join)}"
  end
end

puts "WELCOME TO THE RUBY CALCULATOR"
puts "------START CALCULATING-------"
run()