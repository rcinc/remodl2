class HomeController < ApplicationController
  def index
  end

  def search
  @results = Project.search(params[:term])
  end
end
