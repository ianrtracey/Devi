class HackersController < ApplicationController
	  before_filter :authenticate_user!


	def index
		@hackers = Hacker.all
	end

	def show
		@hacker = Hacker.find(params[:id])
	end

	def approve
		@hacker = Hacker.find(params[:id])
		@hacker.approve
		HackerMailer.acceptance_email(@hacker).deliver
		redirect_to @hacker
	end

	def reject
		@hacker = Hacker.find(params[:id])
		@hacker.reject
		redirect_to @hacker
	end

	def waitlist
		@hacker = Hacker.find(params[:id])
		@hacker.waitlist
		redirect_to @hacker
	end



protected
	
	def authenticate_user!
		if user_signed_in?
			super
		else
			redirect_to login_path, :notice => 'please login'
		end
	end
end
