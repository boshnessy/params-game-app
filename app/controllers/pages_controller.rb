class PagesController < ApplicationController
  def show_name
    a_name = params["name"].upcase
    render json: {name: a_name}
  end
end
