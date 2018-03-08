class PagesController < ApplicationController
  
  def show_name
    response = params["name"].upcase

# Next make it so that if your name begins with the letter “a”, there’s a message that appears saying, “Hey, your name starts with the first letter of the alphabet!”

    message = "Hey, your name starts with the first letter of the alphabet!"

    if response[0] == "A" # needs to be capitalized b/c upcase on line 4
      response = "Hey, your name starts with the first letter of the alphabet!"
    end

    render json: {name: response}
  end

  def guess_a_number
    # make an answer
    answer = 36
    # user guesses
    user_guess = params["guess"].to_i
    # i compare that guess to answer
    # p "answer"
    # p answer
    # p "user_guess"
    # p user_guess # test b/c yay message not working --> one is an integer, one is a string --> convert answer to string or convert user_guess to integer
    if answer == user_guess
      message = "yay"
    elsif answer > user_guess
      message = "you guessed too low"
    elsif answer < user_guess
      message = "you guessed too high"
    else
      message = "nope, you suck"
    end
    # if they get it right, tell them "yay!" if they get it wrong, tell them they suck
    render json: {message: message}
  end

end