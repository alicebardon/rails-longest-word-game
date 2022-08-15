class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def valid_word(word, letters)
    word.split("").all? do |w|
      letters.include?(w)
    end
  end

  def score
    valid_word = valid_word(params[:word], params[:letters])
    puts valid_word
  end
end
