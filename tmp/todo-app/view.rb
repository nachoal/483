class View
  def ask_task_title
    puts 'Whats the task that you want to do? (Title):'
    print '> '

    gets.chomp
  end

  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task.title} - #{task.completed ? '✅' : '🔳' }"
    end
  end

  def ask_for_task_number
    puts "What task number would you like to complete?"
    print '> '

    gets.chomp.to_i - 1
  end
end