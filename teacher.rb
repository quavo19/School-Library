require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(id, age, specialization, name = 'unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    return true
  end
end