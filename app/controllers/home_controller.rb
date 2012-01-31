class HomeController < ApplicationController

  def index
    @title = "Marqueed"
    @user = User.new
    @images = Image.all
    @image = Image.new
  end

  def login
    @title = "Login"
    @user = User.new
  end

  def signup
    @title = "Registration"
  end

end
