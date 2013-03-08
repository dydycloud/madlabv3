class HomeController < ApplicationController
  def index
  	@posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end

  def crew
  	
  end

  def beattapes
  	
  end

  def miwtapes
  	
  end
end
