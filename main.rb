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
end

def draw_button(label_text, x_position, y_position, foreground_color, is_dark_mode) 
   ## Poorly named parameters
  if dark_mode
    # darken foreground color for dark mode
    # ^^^ Uneeded comments, try using extract function/extract class, and or change function name to make this function more readable.
    paint(label_text, x_position, y_position, hex_color_code - 10, '#111111') ## Duplicated code
  else
    # lighten foreground color for non-dark mode
    # ^^^ Uneeded comments, try using extract function, and or change function name to make this function more readable.
    paint(label_text, x_position, y_position, hex_color_code + 10, '#E0E0E0')## Duplicated code
  end
end

