class MatchesController < ApplicationController
  def create
    Match.create_matches(current_profile)
    redirect_to matches_path
  end

  def index
    matches = Match.where(profile: current_profile)
    college_ids = matches.pluck(:college_id).uniq
    @colleges = College.where(id: college_ids)
  end
end
