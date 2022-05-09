class Button
  attr_reader :label_text
  attr_reader :x_position
  attr_reader :y_position
  attr_reader :foreground_color
  attr_reader :is_dark_mode
 
  def initialize(label_text, x_position, y_position, foreground_color, is_dark_mode)
    @label_text, 
    @x_position = x_position
    @y_position = y_position
    @foreground_color = foreground_color
    @is_dark_mode = is_dark_mode
  end

  def dark_paint
    paint(label_text, x_position, y_position, hex_color_code - 10, '#111111')
  end

  def light_paint
    paint(label_text, x_position, y_position, hex_color_code + 10, '#E0E0E0')
  end

end

def draw_button(label_text, x_position, y_position, foreground_color, is_dark_mode) 
  if button.is_dark_mode
    button.dark_paint
  else
    button.light_paint
  end
end

# What smells do you identify? For each smell, what refactoring did you choose to apply?
# Comments, instead we used extract function
# Data clumps, used extract class
# Duplicated code
# 
# Which smell did you address first, and why did you choose that first?
# I fixed the parameter names to be a bit more descriptive.
# Then I extracted the class, and then added the functions to the new class.
# Then I finished by deleteing the old un needed comments.
