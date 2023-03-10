require_relative 'nameable'

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize( age, name = 'unknown', parent_permission: true)
    super()
    @id = rand(1..1000)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @rentals = []
  end

  private

  def of_age?
    @age >= 10
  end

  public

  def can_use_services?
    of_age? || parent_permission
  end

  def correct_name
    @name
  end

  def add_rentals(book, date)
    Rental.new(date, self, book)
  end
end
