require_relative 'person'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

person = Person.new(22,1,'maximilianus')
puts person.correct_name #maximilianus

  capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name #Maximilianus

  capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name #Maximilian