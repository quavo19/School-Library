class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  def initialize(id, age, name = "unknown", parent_permission: true)
    @id = id
    @parent_permission = parent_permission
    @name = name
    @age = age
  end

  private

  def is_of_age?
    @age >= 10
  end


  public

  def can_use_services?
    is_of_age? || parent_permission = true
  end
end
