class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23"

  def dashboard
    @project = Project.new
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.all
    end
  end

  def create
    @project = Project.create(name: params[:name],
                              description: params[:description],
                              started: params[:started],
                              finished: params[:finished],
                              state: params[:state])
    redirect_to root_path
  end
end
