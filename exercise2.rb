def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# This program prints nothing.
# This program returns a proc object.