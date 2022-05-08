def draw_button(label_text, x, y, foreground_color, is_dark_mode)  ## Poorly named parameters
  if is_dark_mode
    # darken foreground color for dark mode
    # ^^^ Uneeded comments, try using extract function, and or change function name to make this function more readable.
    paint(label_text, x, y, foreground_color - 10, '#111111') ## Duplicated code
  else
    # lighten foreground color for non-dark mode
    # ^^^ Uneeded comments, try using extract function, and or change function name to make this function more readable.
    paint(label_text, x, y, foreground_color + 10, '#E0E0E0')## Duplicated code
  end
end