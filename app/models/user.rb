class User < ActiveRecord::Base
  #id, email, ?username?, ?flickr?
  def self.from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
    end
  end
end