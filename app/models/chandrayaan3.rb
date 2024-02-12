class Chandrayaan3 < ApplicationRecord
  def move(command)
    case command
    when 'f'
      move_forward
    when 'b'
      move_backward
    when 'l'
      turn_left
    when 'r'
      turn_right
    when 'u'
      turn_up
    when 'd'
      turn_down
    else
      puts "This is not a correct command!"
    end
  end

  private

  def turn_left
    case direction
    when 'N'
      self.direction = 'W'
    when 'S'
      self.direction = 'E'
    when 'E'
      self.direction = 'N'
    when 'W'
      self.direction = 'S'
    end
  end

  def turn_right
    case direction
    when 'N'
      self.direction = 'E'
    when 'S'
      self.direction = 'W'
    when 'E'
      self.direction = 'S'
    when 'W'
      self.direction = 'N'
    end
  end

  def turn_up
    puts "Before turn_up: direction=#{direction}, position_z=#{position_z}"
    self.position_z += 1
    puts "After turn_up: direction=#{direction}, position_z=#{position_z}"
  end
  
  def turn_down
    puts "Before turn_down: direction=#{direction}, position_z=#{position_z}"
    self.position_z -= 1
    puts "After turn_down: direction=#{direction}, position_z=#{position_z}"
  end

  def move_forward
    case direction
    when 'N'
      self.position_y += 1
    when 'S'
      self.position_y -= 1
    when 'E'
      self.position_x += 1
    when 'W'
      self.position_x -= 1
    when 'Up'
      self.position_z += 1
    when 'Down'
      self.position_z -= 1
    end
  end

  def move_backward
    case direction
    when 'N'
      self.position_y -= 1
    when 'S'
      self.position_y += 1
    when 'E'
      self.position_x -= 1
    when 'W'
      self.position_x += 1
    when 'Up'
      self.position_z -= 1
    when 'Down'
      self.position_z += 1
    end
  end
end
