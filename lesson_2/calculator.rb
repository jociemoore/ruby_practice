require 'pry'
require 'yaml'
require 'i18n'

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  (0..9).each do |x|
    x = x.to_s
    return true if num.include?(x)
  end
  false
end


def operation_to_message(op)
  testing = case op
  when '1'
    I18n.t('add')
  when '2'
    I18n.t('sub')
  when '3'
    I18n.t('mul')
  when '4'
    I18n.t('div')
  end
  test = "This is for testing only."
  testing
end 

# config = YAML.load_file('calc_messages.yml')
# prompt(config['welcome'])
I18n.load_path = Dir['calc_messages.yml']
I18n.locale = :fr

prompt(I18n.t('welcome'))

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(I18n.t('valid_name'))
  else
    break
  end
end

greeting = I18n.t('hello')
prompt(greeting %{:name => name})

loop do
  number1 = ''
  loop do
    prompt(I18n.t('number1'))
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt(I18n.t('valid_number'))
    end
  end

  number2 = ''
  loop do
    prompt(I18n.t('number2'))
    number2 = gets.chomp

    if valid_number?(number2)
      break
    else
      prompt(I18n.t('valid_number'))
    end
  end

  prompt(I18n.t('choose_operation'))

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(I18n.t('valid_operation'))
    end
  end

  confirm = I18n.t('progress')
  prompt(confirm %{:calculating => operation_to_message(operator)} )

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  answer = I18n.t('result')
  puts(answer %{:equals => result})

  prompt(I18n.t('again'))
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(I18n.t('closing'))
