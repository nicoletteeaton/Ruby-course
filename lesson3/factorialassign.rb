
counter = 1
result = 1
zero_counter = 1

num = rand(20) 
while true
    if num != 0
        num.times do
            result = result * counter
            counter += 1
        end
    puts "The factorial of " + num.to_s + " is " + result.to_s
    if zero_counter == 1
        puts "A non-zero number was selected on the first trial"
    else
        puts "It took " + zero_counter.to_s + " trials to select a non-zero number"
    end
break
    elsif num == 0
        num = rand(20)
        zero_counter += 1
    end
end
