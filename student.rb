require_relative 'person'

class Students < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, name = 'unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
