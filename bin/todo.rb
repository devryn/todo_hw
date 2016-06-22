File.open("todo.txt", "w") do |todo|
  todo.write("#/n|Description/n|Done?")
end

def welcome
  puts "Make Your To-Do List"
end

def get_input
  gets.chomp
end

class List

  def incomplete
    puts "To-Do: "
    @items.each.with_index do |item, index|
      puts "#{index} - #{item}"
    end
  end

  def complete
    puts
    puts "Complete: "
    puts @completed_items
  end

  def run
     @items = []
     @completed_items = []
      welcome
      loop do
        complete
        incomplete
        puts "Press 1 to add, 2 to quit, 3 to mark as complete."
        gi = get_input
      if gi == "2"
        break
      elsif gi == "1"
          puts "- "
          @items.push(get_input)
        elsif gi == "3"
          puts "Which item number?"
          item_index = get_input.to_i
          completed_item = @items[item_index]
          @items.delete_at(item_index)
          @completed_items.push(completed_item)
      end
    end
  end
end

List.new.run
