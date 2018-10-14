class PagesController < ApplicationController
  def index
  	@muser = Muser.new
  end
end
