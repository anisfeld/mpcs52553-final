class ProjectsController < ApplicationController

  def index
  end

  def update
    project = Project.find_by(id: params["id"])
    project.title = params["title"]
    project.description = params["description"]
    project.logo_url = params["logo_url"]
    project.save
    redirect_to "/projects"
  end

  def destroy
    project = Project.find_by(id: params["id"])
    project.delete
    redirect_to "/projects"
  end

  def create
    Project.create :title => params["title"],
                 :description => params["description"],
                 :logo_url => params["logo_url"],
                 :owner_id => params["user_id"]
    redirect_to "/projects"
	end

end