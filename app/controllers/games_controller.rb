class GamesController < ApplicationController
  def new
    @letters = []
    rand(1..10).times do
      @letters << rand(65..90).chr
    end
  end

  def score
    word = params[:word]
    letters = params[:letters]
    word_letters = word.split

    true_or_false = true
    word_letters.each do |word|
      true_or_false = true_or_false && letters.include?(word)
    end

    @result =
      if true_or_false
        "Nice job!"
      else
        "all the letters should be on the array"
      end
  end
end
