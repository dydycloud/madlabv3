class HomeController < ApplicationController
  def index
  	@posts = Post.all
    @beattapes = Beattape.all
    @mixtapes = Mixtape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json 
    end
  end

  def crew
  	
  end

  def beattapes
  	
  end

  def miwtapes
  	
  end
end
