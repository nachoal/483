require_relative 'task'
# Our waiter (the one talking to the user through the view and talking to the repo)
class Controller
  def initialize(view, repository)
    @view = view # data type: View instance 
    @repository = repository # data type: Repository instance
  end

  # 1. Create tasks:
  def add_task
    # TODO
    # title: 1. ask user whats the task that they want to do - String
    title = @view.ask_task_title
    # 2. Create the Task.new(title)
    task = Task.new(title)
    # 3. Store in repository
    @repository.add(task)
  end

  # 2. Lists tasks
  def list_tasks
    # TODO
    # Get the list of tasks from the repo and store in variable
    tasks = @repository.all
    # send the list of tasks to the view to be printed
    @view.display_tasks(tasks)
  end

  # 3. Mark task as complete
  def mark_task_as_complete
    # TODO
    # 1. Ask the user what task to complete index: (number  of task - 1)
    index = @view.ask_for_task_number
    # 2. Go to repo and get the task with that index
    task = @repository.find_by_index(index)
    # 3. and update it to completed
    task.complete!
  end

  # EXTRA: delete a task
end













