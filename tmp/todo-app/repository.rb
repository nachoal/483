class Repository
  def initialize
    @tasks = []
  end

  # BEHAVIOR

  def add(task)
              # Instance of Task
    @tasks << task
  end

  def all
    @tasks
  end

  def find_by_index(index)
    @tasks[index]
  end
end