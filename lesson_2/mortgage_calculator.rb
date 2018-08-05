def mortgage(loan_amount, apr_percent, loan_months)
  monthly_interest_rate = (apr_percent / 100) / 12
  denominator = 1 - (1 + monthly_interest_rate)**-loan_months
  (loan_amount * (monthly_interest_rate / denominator)).round(2)
end

loop do # main loop
  loop do
    # => intro
    puts "Let's calculate a mortgage payment:"
    # => Get valid loan amount
    loan = ''
    loop do
      puts "How much is the loan?"
      loan = gets.chomp
      if loan == "0"
        puts "You must borrow money to have a mortgage payment."
      elsif loan.to_i < 0
        puts "Please enter a positive dollar amount."
      elsif loan.to_i.to_s != loan
        puts "Please enter a valid number."
      else
        break
      end
    end
    loan = loan.to_i
    # => Get valid number of years
    loan_duration = ''
    loop do
      puts "How many years does the loan last?"
      loan_duration = gets.chomp
      if loan_duration == "0"
        puts "The loan is due today!"
        break
      elsif loan_duration.to_i < 0
        puts "Please enter a positive number of years."
      elsif loan_duration.to_i.to_s != loan_duration
        puts "Please enter a valid number."
      else
        break
      end
    end
    loan_duration = loan_duration.to_i
    loan_in_months = loan_duration * 12
    break if loan_duration.zero?
    # => Get a valid APR
    apr = ''
    loop do
      puts "What is the annual interest rate?"
      apr = gets.chomp
      if apr == "0"
        break
      elsif apr < "0"
        puts "Please enter a positive interest rate."
      elsif apr.include?('.') && apr.to_f.to_s != apr
        puts "Please enter a valid number."
      elsif !apr.include?('.') && apr.to_i.to_s != apr
        puts "Please enter a valid number."
      else
        break
      end
    end
    apr = apr.to_f.round(2)
    if apr.zero?
      puts "The mortgage is $#{format('%.02f', (loan / loan_in_months))}/month."
      break
    end
    payment = mortgage(loan, apr, loan_in_months)
    puts "The mortgage is $#{format('%.02f', payment)}/month."
    break
  end
  puts "Would you like to calculate another mortgage payment? ('y' or 'n')"
  again = gets.chomp
  break if again == 'n'
end
