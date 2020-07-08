def minilang(input_string)
  commands = input_string.split
  register = 0
  stack = []
  commands.each do |command|
    if command.to_i.to_s == command
      register = command.to_i
    else
      case command
      when 'PUSH'
        stack << register
      when 'ADD'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register += stack.pop
      when 'SUB'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register -= stack.pop
      when 'MULT'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register *= stack.pop
      when 'DIV'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register /= stack.pop
      when 'MOD'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register %= stack.pop
      when 'POP'
        if stack.empty?
          puts "Stack is empty; invalid command"
          return nil
        end
        register = stack.pop 
      when 'PRINT'
        puts register
      else
        puts 'An error occurred; invalid command'
        return nil
      end
    end
  end
end

minilang('PRINT')
# 0
minilang('5 PUSH 3 MULT PRINT')
# 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')
# (nothing printed; no PRINT commands)
minilang('3 PUSH 5 MOD PUSH 7 PUSH 4 PUSH 5 MULT PUSH 3 ADD SUB DIV PRINT')
# 8
