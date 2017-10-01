require 'pry'
require_relative 'monkey.rb'

dk = Monkey.new('Donkey Kong', 'Nintendo Monkey')
dk.eat('banana')
dk.eat('peanuts')
dk.introduce

binding.pry
