# Create your module here!
module MartialArts
  def swordsman
    return "I'm a swordsman"
  end
end

module Cooking
  def stirfry
    return "I cook the stirfry"
  end
end

class Ninja
  include MartialArts

  def initialize(clan)
    @clan = clan
  end

  def introduce
    puts "#{swordsman} of the #{@clan} clan!"
  end
end

class Samurai
  include MartialArts
  include Cooking

  def initialize(shogun)
    @shogun = shogun
  end

  def introduce
    puts "#{swordsman} and #{stirfry} for our shogun, #{@shogun}!"
  end
end

person = Samurai.new("Jose")
person1 = Samurai.new("Gerald")
person2 = Ninja.new("Feety Pajamas")

person.introduce
person1.introduce
person2.introduce