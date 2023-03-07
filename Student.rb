require_relative 'Person'

class Students < Person
  attr_accessor :classroom

  def initialize(id, age, classroom, name = 'unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    return '¯\(ツ)/¯'
  end
end
