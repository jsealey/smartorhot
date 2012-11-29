class ExtendedProfilesController < ApplicationController
  # GET /extended_profiles
  # GET /extended_profiles.json
  def index
    @extended_profiles = ExtendedProfile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @extended_profiles }
    end
  end

  # GET /extended_profiles/1
  # GET /extended_profiles/1.json
  def show
    @extended_profile = ExtendedProfile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @extended_profile }
    end
  end

  # GET /extended_profiles/new
  # GET /extended_profiles/new.json
  def new
    @extended_profile = ExtendedProfile.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @extended_profile }
    end
  end

  # GET /extended_profiles/1/edit
  def edit
    @extended_profile = ExtendedProfile.find(params[:id])
  end

  # POST /extended_profiles
  # POST /extended_profiles.json
  def create
    @extended_profile = ExtendedProfile.new(params[:extended_profile])

    respond_to do |format|
      if @extended_profile.save
        format.html { redirect_to edit_user_registration_path, notice: 'Extended profile was successfully created.' }
        format.json { render json: @extended_profile, status: :created, location: @extended_profile }
      else
        format.html { redirect_to edit_user_registration_path }
        format.json { render json: @extended_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /extended_profiles/1
  # PUT /extended_profiles/1.json
  def update
    @extended_profile = ExtendedProfile.find(params[:id])

    respond_to do |format|
      if @extended_profile.update_attributes(params[:extended_profile])
        format.html { redirect_to edit_user_registration_path, notice: 'Extended profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { redirect_to edit_user_registration_path, notice: 'Failed to update extended profile.' }
        format.json { render json: @extended_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extended_profiles/1
  # DELETE /extended_profiles/1.json
  def destroy
    @extended_profile = ExtendedProfile.find(params[:id])
    @extended_profile.destroy

    respond_to do |format|
      format.html { redirect_to extended_profiles_url }
      format.json { head :no_content }
    end
  end
end
