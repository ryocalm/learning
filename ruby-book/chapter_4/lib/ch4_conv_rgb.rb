# frozen_string_literal: true

# convert 3 integer values (0 <= n <= 255) to hexadecimal color code format.
#
# @param red [Integer] color value of Red.
# @param green [Integer] color value of Green.
# @param blue [Integer] color value of Blue.
# @return [String] hexadecimal color code.
def to_hex(red, green, blue)
  # '#' +
  #   red.to_s(16).rjust(2, '0') +
  #   green.to_s(16).rjust(2, '0') +
  #   blue.to_s(16).rjust(2, '0')

  ## map & join
  # hex = '#'
  # rgb = [red, green, blue].map do |n|
  #   n.to_s(16).rjust(2, '0')
  # end
  # hex + rgb.join

  ## inject
  [red, green, blue].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

# convert hexadecimal color code string to 3 integer values (0 <= n <= 255).
#
# @param hex_str [String] hexadecimal color code
# @return [Array<Integer>] 3 int values (Red, Green, Blue).
def to_ints(hex_str)
  ## map
  # red = hex_str[1..2]
  # green = hex_str[3..4]
  # blue = hex_str[5..6]
  # [red, green, blue].map do |n|
  #   n.hex
  # end

  ## regexp
  hex_str.scan(/\w\w/).map(&:hex)
end
