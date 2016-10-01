class User < ActiveRecord::Base
  has_one :profile
  def self.find_or_create_from_omniauth(auth)
    provider = auth.provider
    uid = auth.uid

    find_or_create_by(provider: provider, uid: uid) do |user|
      user.provider = provider
      user.uid = uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.picture = auth.info.image
    end
  end
end
