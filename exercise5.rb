def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# This program gives us an error because the method is not expecting a block to be passed as an argument, but a variable instead. For the program to run successfully, you need to change the parameter the method expects by including the ampersand.