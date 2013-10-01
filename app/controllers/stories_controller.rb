class StoriesController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@story = @project.backlog.stories.create(params[:story])
		redirect_to project_backlog_path(@project)
	end
end