class Zombie
  attr_accessor :name, :brain
  def initialize
    @name = 'Shaun'
    @brain = 0
  end

  def alive?
    @alive
  end

  def dead?
    @dead
  end
end
