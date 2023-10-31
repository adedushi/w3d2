require_relative "./card.rb"
require_relative "./Board.rb"
class Game 

    @board
    @previous_guess = nil

    def initialize
        @board = Board.new
    end

    def play
        @board.render
        @board.hide_all
        @board.render
    end

    def prompt
        input = gets.chomp.split(",").map { |index| index.to_i}
    end

    def make_guess
        if !!previous_guess 
    end

end