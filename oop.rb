# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    def initialize(name)
        @name = name
        @color = "silver"
    end

    def say
        "*~*Hello #{@name}!*~*"
    end
end
puts unicorn1 = Unicorn.new("Dwight")
puts unicorn1.say



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name, pet = "Bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def drink
        @thirsty = false
    end
end

puts vamp1 = Vampire.new("Vlad")

puts vamp1.drink

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :is_hungry, :counter
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @counter = 0
    end
    def eat
        @counter += 1
        @is_hungry = false if @counter >= 4
    end
end

puts dave = Dragon.new("Dave", "Mark", "blue")

puts dave.name == "Dave"
puts dave.rider == "Mark"
puts dave.color == "blue"

dave.eat
puts dave.is_hungry == true
3.times {dave.eat}
puts dave.is_hungry == false

        

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    attr_reader :name, :disposition, :age
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
    end

    def celebrate_birthday
        @age += 1
    end

    def is_adult
        @age >= 33 
    end

    def is_old
        @age >= 101
    end

    def has_ring
        @name == "Frodo"
    end
end

puts frodo = Hobbit.new("Frodo", "Happy", 35)
puts frodo.name
puts frodo.disposition
puts frodo.age
puts frodo.celebrate_birthday
puts frodo.is_adult
puts frodo.is_old
puts frodo.has_ring


