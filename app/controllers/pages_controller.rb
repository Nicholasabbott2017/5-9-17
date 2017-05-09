class PagesController < ApplicationController
def home
end
def contact
end
def browse
end
def post
@swing 
end
def search
end
  def display
    @users = User.search(params[:search]).order("created_at DESC") 
  end
end
