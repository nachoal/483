require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'
require_relative 'router'

# task_1 = Task.new('get the milk')
# task_2 = Task.new('Buy some beer')

# p task_1
# p task_2

# Storing our new tasks in the repo: 


# # adding a task to the repo:
# repository.add(task_1)
# repository.add(task_2)

# p repository.all

# ------------------------------
repository = Repository.new
# Create a view 
view = View.new

# Create a controller
controller = Controller.new(view, repository)

router = Router.new(controller)

router.run












