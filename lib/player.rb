class Player

attr_accessor :name,:life_points

def initialize(player_name)
  @name = player_name
  @life_points = 10
end

def show_state
  puts "#{@name} a #{@life_points} points de vie."

end

def gets_damage(damage_receive)
  @life_points = @life_points - damage_receive
  if @life_points <= 0
    puts "le joueur #{@name} a été tué !!"
  end
    end

    def attacks(player_2)
    puts "#{@name} attaque #{player_2.name}"
      damage = compute_damage
      puts " il lui inflige #{damage} de dégâts"
       player_2.gets_damage(damage)

    end

    def compute_damage
      return rand(1..6)

    end

end
