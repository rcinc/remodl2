class ActivitiesController < ApplicationController
  def index
     if current_user && current_user.profile && current_user.profile.vendor
      @activities = PublicActivity::Activity.order("created_at desc")
     else
       @activities = PublicActivity::Activity.order("created_at desc").where(owner_id: current_user.try(:id), owner_type: "User")
    #  @activities = PublicActivity::Activity.order("created_at desc").where(project_id == current_user.project_id)
    end
  end
end
