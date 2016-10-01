class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    @profile.save
    redirect_to '/matches/create'
  end

  private

  def profile_params
    params.require(:profile).permit(:sat, :gpa, :social, :athletics)
  end
end
