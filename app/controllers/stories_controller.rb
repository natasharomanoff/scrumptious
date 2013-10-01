class StoriesController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@story = @project.backlog.stories.create(params[:story])
		redirect_to project_backlog_path(@project)
	end

	def show
		@project = Project.find(params[:project_id])
		@story = @project.backlog.stories.find(params[:id])
		
	end
end