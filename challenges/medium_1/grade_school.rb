class School
  attr_reader :students

  def initialize
    @students = {}
  end

  def to_h
    students.sort.to_h
  end

  def add(name, _grade)
    if students[_grade] 
      students[_grade].push(name).sort!
    else
      students[_grade] = [name]
    end
  end

  def grade(_grade)
    students[_grade] ? students[_grade] : []
  end
end
