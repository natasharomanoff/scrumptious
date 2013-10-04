require 'pp'

class ProfilesController < ApplicationController
	def show
		@user = current_user
	end

	def edit
		@user = current_user
	end

	def update
		@user = current_user

		pp params[:user]
		respond_to do |format|
	        if @user.update_attributes(params[:user])
	        	format.html { redirect_to profiles_path(@user), notice: 'Job was successfully updated.' }
	        else
	        	format.html { render action: "edit" }
	        end
        end
	end
end