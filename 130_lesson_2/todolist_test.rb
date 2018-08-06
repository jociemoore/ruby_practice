require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'final_todo_list'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  # Your tests go here. Remember they must start with "test_"
  def test_to_a
    assert_equal(@todos, @list.to_a)
  end

  def test_size
    assert_equal(3, @list.size)
  end

  def test_first
    assert_equal(@todo1, @list.first)
  end

  def test_last
    assert_equal(@todo3, @list.last)
  end

  def test_shift
    assert_equal(@todo1, @list.shift)
    assert_equal([@todo2, @todo3], @list.to_a)
  end

  def test_pop
    assert_equal(@todo3, @list.pop)
    assert_equal([@todo1, @todo2], @list.to_a)
  end

  def test_done?
    assert_equal(false, @list.done?)
  end

  def test_typeError
    assert_raises(TypeError) { @list.add(1) }
  end

  def test_shovel
    new_task = Todo.new('Take shower')
    @list << new_task
    assert_includes(@list.to_a, new_task)
  end

  def test_add
    new_task = Todo.new('Take shower')
    @list.add(new_task)
    assert_includes(@list.to_a, new_task)
  end

  def test_item_at
    assert_equal(@todos[1], @list.item_at(1))
    assert_raises(IndexError) { @list.item_at(50) }
  end

  def test_mark_done_at
    @list.mark_done_at(1)
    assert(@todo2.done)
    assert_equal(false, @todo1.done)
    assert_raises(IndexError) { @list.mark_done_at(50) }
  end

  def test_mark_undone_at
    @list.mark_done_at(0)
    @list.mark_done_at(1)
    @list.mark_undone_at(0)
    assert_equal(false, @todo1.done)
    assert_equal(true, @todo2.done)
    assert_raises(IndexError) { @list.mark_undone_at(50) }
  end

  def test_done!
    @list.done!
    done_values = []
    @list.each { |task| done_values << task.done? }
    assert_equal([true, true, true], done_values)
  end

  def test_remove_at
    @list.remove_at(1)
    assert_equal([@todo1, @todo3], @list.to_a)
    assert_raises(IndexError) { @list.remove_at(50) }
  end

  def test_to_s
    output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal(output, @list.to_s)
  end

  def test_to_s_done
    output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ---- Today's Todos ----
    [X] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    @list.mark_done_at(0)
    assert_equal(output, @list.to_s)
  end

  def test_to_s_alldone
    output = <<-OUTPUT.chomp.gsub /^\s+/,""
    ---- Today's Todos ----
    [X] Buy milk
    [X] Clean room
    [X] Go to gym
    OUTPUT

    @list.done!
    assert_equal(output, @list.to_s)
  end

  def test_each
    @list.each { |task| task.description = 'testing'}
    assert_equal('testing', @todo1.description)
    assert_equal('testing', @todo2.description)
    assert_equal('testing', @todo3.description)
  end

  def test_each_return
    test_return = @list.each { |task| nil }
    assert_equal(@list, test_return)
  end

  def test_select
    @todo1.done!
    updated_list = @list.select { |task| task.done? }
    assert_equal([@todo1], updated_list.to_a)
    assert(updated_list.object_id != @list.object_id)
  end

  def test_find_title
    match = @list.find_by_title('Buy milk')
    assert_equal(@todo1, match)
    assert(match.object_id != @list.object_id)
  end

  def test_all_done
    @todo1.done!
    done_tasks = @list.all_done
    assert_equal([@todo1], done_tasks.to_a)
    assert(done_tasks.object_id != @list.object_id)
  end

end