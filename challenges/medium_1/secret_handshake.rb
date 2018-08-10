class SecretHandshake
  def initialize(input)
    @input = formatted_as_binary(input)
  end

  def commands
    return [] if invalid_input
    encoded_commands = input.chars.reverse.slice!(0, 5)
    results = lookup(encoded_commands)
    results.reverse!.shift if results.include?("reverse")
    results
  end

  private
  @@key = ["wink", "double blink", "close your eyes", "jump", "reverse"]
  attr_reader :input

  def formatted_as_binary(input)
    input.is_a?(Integer) ? input.to_s(2) : input
  end

  def invalid_input
    !input.match(/^[10]+$/)
  end

  def lookup(encoded_commands)
    decoded_commands = []
    encoded_commands.each_with_index do |value, index|
      decoded_commands << (value.match?("1") ? @@key[index] : nil)
    end
    decoded_commands.compact! if decoded_commands.include?(nil)
    decoded_commands
  end
end

