# 1. create a task 
# 2. list them 
# 3. mark them as completed 
# 4. exit

class Router
  def initialize(controller)
    @running = true
    @controller = controller
  end

  def run
    while @running
      puts 'TODO LIST MANAGER MENU:'
      puts '1. Create a task'
      puts '2. List tasks'
      puts '3. Mark task as completed'
      puts '4. EXIT'

      user_input = gets.chomp.to_i

      case user_input
      when 1
        @controller.add_task
      when 2
        @controller.list_tasks
      when 3
        @controller.mark_task_as_complete
      when 4
        @running = false

        puts 'Thanks for tracking your tasks with us! See you later :)'
      end
    end
  end
end