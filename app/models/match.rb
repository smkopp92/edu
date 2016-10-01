class Match < ActiveRecord::Base
  belongs_to :profile
  belongs_to :college

  def self.create_matches(profile)
    colleges = College.where(
      sat: [profile.sat-100..profile.sat+100]).where(
      gpa: [profile.gpa-0.5..profile.gpa+0.5]).where(
      social: [profile.social-1..profile.social+1]).where(
      athletics: [profile.athletics-1..profile.athletics+1]
    )
    colleges.each do |college|
      Match.create(college: college, profile: profile)
    end
  end
end
