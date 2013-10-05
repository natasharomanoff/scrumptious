class EpicsController < ApplicationController
	def create
		@project = Project.find(params[:project_id])
		@story = @project.backlog.epics.create(params[:epic])
		redirect_to project_backlog_path(@project)
	end
end