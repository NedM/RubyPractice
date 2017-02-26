class Animal
  @@animal_count = 0

  def initialize(name, type)
    @name = name.capitalize
    @type = type.downcase
    @@animal_count += 1
  end

  def introduce
    puts "My name is #{@name} and I am a #{@type}."
  end

  def speak
    puts "???"
  end

  def self.count
    puts "There are #{@@animal_count} animals running around."
  end
end

class Cat < Animal
  def initialize(name)
    super(name, "Cat")
  end

  def speak
    puts "meow!"
  end
end

class Dog < Animal
  def initialize(name)
    super(name, "Dog")
  end

  def speak
    puts "Woof"
  end
end

class BigDog < Dog
  def initialize(name)
    super("Big " + name)
  end

  def speak
    puts "BOOF!"
  end
end

maurice = Cat.new("Maurice")
tyrone = BigDog.new("Tyrone")

Animal.count

scooter = Dog.new("Scoots")

scooter.introduce
scooter.speak

maurice.introduce
maurice.speak

tyrone.introduce
tyrone.speak

Animal.count
