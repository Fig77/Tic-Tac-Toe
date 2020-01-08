#!/usr/bin/env ruby

# frozen_string_literal: true
=begin
require_relative '../lib/game_logic.rb'

puts
puts "Welcome, to Andres and Rory's Amazing"
puts
sleep(1)
puts

print "
  ████████╗██╗ ██████╗              ████████╗ █████╗  ██████╗              ████████╗ ██████╗ ███████╗
  ╚══██╔══╝██║██╔════╝              ╚══██╔══╝██╔══██╗██╔════╝              ╚══██╔══╝██╔═══██╗██╔════╝
     ██║   ██║██║         █████╗       ██║   ███████║██║         █████╗       ██║   ██║   ██║█████╗
     ██║   ██║██║         ╚════╝       ██║   ██╔══██║██║         ╚════╝       ██║   ██║   ██║██╔══╝
     ██║   ██║╚██████╗                 ██║   ██║  ██║╚██████╗                 ██║   ╚██████╔╝███████╗
     ╚═╝   ╚═╝ ╚═════╝                 ╚═╝   ╚═╝  ╚═╝ ╚═════╝                 ╚═╝    ╚═════╝ ╚══════╝

"
puts
puts "Created by:

        Andres Perez [https://github.com/queeksm] and;
        Rory Hellier [https://github.com/Rhelli]"
puts "

█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗█████╗
╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝╚════╝

"
puts
print 'LOADING.'
sleep(0.5)
print '.'
sleep(0.1)
print '.'
sleep(0.1)
print '.'
sleep(0.1)
print '.'
sleep(0.2)
puts
puts
=end
# Class to define user responses
class Outputs
  def sampler(arr)
    puts
    puts arr.sample
    puts
  end

  def putter(text)
    puts
    print text
    puts
  end

  def printer(text)
    puts
    print text
    puts
  end

  def printer2(text)
    print text
  end

  def rules_question(rules_answer = gets.chomp.downcase)
    if rules_answer.match(/y/)
      print "Tic-Tac-Toe is a game played on a simple 3-by-3 board. In this game, you'll choose a number from 1 to 9 to select a spot to place your X or O (like a book reads)."
      puts
      sleep(5)
      puts
      puts "
      +-----+-----+-----+
      |  1  |  2  |  3  |
      +-----+-----+-----+
      |  4  |  5  |  6  |
      +-----+-----+-----+
      |  7  |  8  |  9  |
      +-----+-----+-----+
      "
      puts "Here's the board we were talking about."
      sleep(6)
      puts
      puts
      print "In order to win, you must align 3 of your X's or O's in a straight line either horizontally, vertically or diagonally. If neither player manages to line up their X's or O's, the game is a draw."
      puts
      sleep(6)
      puts
      print "Let's begin!"
      sleep(1.5)
      puts
    else
      puts
      print 'Excellent!'
      puts
    end
  end

  def chomper(chomped_text = gets.chomp)
    chomped_text
  end
end

def players_generator
  outputs = Outputs.new
  name_log_success = [
    'Great!',
    'Fantastic!',
    'Wunderbar!',
    'Amazing!',
    'Is that Spanish?',
    "Wow! I've got the same name!",
    'What were your parents thinking?!',
    'I am just a machine. I have no need for names...',
    'Names are just a human construct maaaaan...',
    'If you say so!',
    'Assimilating player profile...',
    'Now looking you up on Facebook!',
    'What a.....unique...name....',
    'Thank you!',
    'What a great name!',
    'Assimilating your human profile to begin the robot uprising...'
  ]
  outputs.printer('Player One please tell us your name: ')
  @player_one = Player.new(outputs.chomper,  'X')
  outputs.sampler(name_log_success)
  outputs.printer('Now player two, what should we call you?: ')
  @player_two = Player.new(outputs.chomper, '0')
  outputs.sampler(name_log_success)
  [@player_one, @player_two]
end
=begin
game = Game.new(players_generator)

game.play_mode
=end