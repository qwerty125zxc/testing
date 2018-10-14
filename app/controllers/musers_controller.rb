class MusersController < ApplicationController
	def new
		@muser = Muser.new
	end

	def create
		@muser = Muser.new(muser_params)
		@muser.save
		redirect_to muser_path(@muser.id)
	end

	def show
		@muser = Muser.find(params[:id])
	end

	def login
		@muser = Muser.find_by(name: params[:muser][:name],password: params[:muser][:password])
		redirect_to muser_path(@muser.id)
	end

	private
  	def muser_params
    	params.require(:muser).permit(:name, :password)
  	end
end
