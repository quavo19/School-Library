require_relative 'person'

class Students < Person
  attr_reader :classroom

  def initialize(id, age, classroom, name = 'unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
    @age = age
    @parent_permission = parent_permission
    @name = name
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
