#File.open("todo.txt", "w") do |todo|
#  todo.write("#/n|Description/n|Done?")
#end

def welcome
  puts "To make a new list, press a. To exit, press q."
  puts "> "
end

def get_input
  gets.chomp
end

def new_list
  count = 0
  get_input
  count + 1
end

class List

  def run
      welcome
      loop do
        puts "Press a to add, q to quit."
        gi = get_input
      if gi == "q"
        break
      elsif gi == "a"
          puts "- "
          new_list
      end
    end
  end
end

List.new.run
