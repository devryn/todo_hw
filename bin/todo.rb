#File.open("todo.txt", "w") do |todo|
#  todo.write("#/n|Description/n|Done?")
#end

def welcome
  puts "Make Your To-Do List"
end

def get_input
  gets.chomp
end

def new_list
  get_input
end



class List

  def run
      welcome
      loop do
        puts "Press 1 to add, 2 to quit, 3 to mark as complete."
        gi = get_input
      if gi == "2"
        break
      elsif gi == "1"
          puts "- "
          new_list
        elsif gi == "3"

      end
    end
  end
end

List.new.run
