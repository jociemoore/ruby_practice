# -------------- METHOD IMPLEMENTATION --------------

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

class TodoList
  attr_accessor :title, :todos

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(task)
    if task.class == Todo
      todos << task
    else
      "Can only add Todo objects"
    end
  end
  alias_method :<<, :add

  def size
    todos.size
  end

  def first
    todos.first
  end

  def last
    todos.last
  end

  def item_at(index)
    todos[index]
  end

  def mark_done_at(index)
    todos[index].done!
  end

  def mark_undone_at(index)
    todos[index].undone!
  end

  def shift
    todos.shift
  end

  def pop
    todos.pop
  end

  def remove_at(index)
    todos.delete_at(index)
  end

  def to_s
    puts "---- Today's Todos ----"
    todos.each do |task|
      puts "#{task.to_s}"
    end
  end

  def each
    counter = 0 
    while counter < todos.size
      yield(todos[counter])
      counter += 1
    end
    self
  end

  def select
    new_array = []
    each do |task|
      new_array << task if yield(task)
    end
    new_list = TodoList.new(title)
    new_array.each do |task|
      new_list.add(task)
    end
    new_list
  end
end

# -------------- METHOD INVOCATION --------------

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

todo1.done!

results = list.select { |todo| todo.done? }    # you need to implement this method

puts results.inspect


