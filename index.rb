require_relative './person'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

# Testing Decorator
person = Person.new(22, 'maximilianus')
puts person.correct_name # maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name # Maximilianus

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name # Maximilian
