    # def equal_to_four(x)
    #   if x == 4
    #     puts "yup"
    #   else
    #     puts "nope"
    # end

    # equal_to_four(5)

    # test_code.rb:96: syntax error, unexpected end-of-input, expecting keyword_end


    # This error occurs because the developer forgot to type the end of the if statement. The end that is included is evaluated as the end of the if statement leaving the method unclosed. See below for the fix:

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
      end  
    end

    equal_to_four(5)