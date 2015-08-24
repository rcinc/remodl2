class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_this_user, :except => [:closed_project, :show, :index, :new, :create]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    @bids = Bid.all
    @users = User.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @bids = Bid.all
    @users = User.all
    @bid = Bid.new
    @comment = Comment.new
    @comments = Comment.all
    @show_bid_form =  @project.bids.where(user: current_user).empty?
    end

  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def closed_project
    project = Project.find(params[:id])
    bid = Bid.find(params[:bid_id])
    bid.accepted = true
    project.closed = true
    bid.save
    project.save
    redirect_to project.user.profile
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :description, :date, :url1, :url2, :url3, :url4, :kitchen, :sqft, :number_of_cabinets, :countertop_style, :counter_top_length, :number_of_outlets, :light_fixture_type, :floor_sqft, :floor_type, :bath, :vanity_width, :tub_length, :shower_sqft, :mirror, :bath_fan, :air_conditioning, :ac_type, :home_sqft, :ac_size, :duct_work, :roof, :exterior_general, :more_detail, :paint, :floor, :floor_demo, :location_city, :budget, :ends, :pool, :drive_way, :length, :width, :landscaping, :fence, :fence_material, :windows, :window_type, :quantity, :electrical, :plumbing, :handy_man, :closed)
    end

    def authenticate_this_user
      if  @project.user_id != current_user.id
        redirect_to projects_url
        flash[:notice] = "Access denied as you are not owner of this profile"
      end
    end
end
