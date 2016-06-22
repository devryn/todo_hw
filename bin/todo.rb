#File.open("todo.txt", "w") do |todo|
#  todo.write("#/n|Description/n|Done?")
#end

def welcome
  puts "To make a new list, press 1. To exit, press q."
  puts "> "
  return gets.chomp
end

def new_list
  gets.chomp
end

class List
  welcome

  loop do
    if new_list == "1"

    elsif new_list.to_i == "0"
      break
    else
      puts "Sorry, I don't understand. #{welcome}"
    end
  end
end

List.new
