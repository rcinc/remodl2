class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
<<<<<<< HEAD
  before_action :authenticate_this_user, :except => [:new, :show, :upvote, :downvote, :create, :index]
=======
  before_action :authenticate_this_user, :except => [:new, :upvote, :downvote, :create, :index, :show]
>>>>>>> rob

  # GET /profiles
  # GET /profiles.json
  def index
    @profiles = Profile.all
    @users = User.all
  end

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    @bids = Bid.all
    if current_user && current_user.profile.vendor
     @activities = PublicActivity::Activity.order("created_at desc")
    else
      @activities = PublicActivity::Activity.order("created_at desc")
   #  @activities = PublicActivity::Activity.order("created_at desc").where(project_id == current_user.project_id)
    end
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  @profile.user_id = current_user.id
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    respond_to do |format|
      if @profile.save
        UserMailer.registration_confirmation(@profile.user).deliver
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @profile = Profile.find(params[:id])
    @profile.votes.create
    redirect_to(profiles_path)
  end

  def downvote
    @profile = Profile.find(params[:id])
    @profile.downvotes.create
    redirect_to(profiles_path)
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:name, :user_id, :name, :picture, :bio, :deactivate, :vendor, :company, :address, :phone, :license_type, :license_number)
    end

    def authenticate_this_user
      if  @profile.user_id != current_user.id
        redirect_to current_user.profile
        flash[:notice] = "Access denied as you are not owner of this profile"
      end
    end

end
