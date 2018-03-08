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

end