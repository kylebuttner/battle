class Player
  MAX_HP = 10
  attr_reader :name, :hp, :avatar

  def initialize(name, avatar = "https://s-media-cache-ak0.pinimg.com/236x/0a/9f/42/0a9f42fe0fde3fe90994bc071ff2f687.jpg")
    @name = name
    @hp = MAX_HP
    @avatar = avatar
  end

  def receive_attack(damage)
    @hp -= damage
  end

end
