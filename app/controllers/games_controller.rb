class GamesController < ApplicationController
   
    def new
        @letters = []
        10.times do 
            @letters << ('a'..'z').to_a[rand(26)]
        end
        return @letters
    end

    def score
        if params[:word]
            @word = params[:word]
            @letters = params[:letters]
            @word.split("").each do |word_letter|
               if !@letters.include?(word_letter)
                 @stop_letter = "#{word_letter} ne fait partie de la selection"
                 break
               else
                @stop_letter = ""
                end
            end
        end
    end

end
