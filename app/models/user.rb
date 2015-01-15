# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  api_key_id :integer
#
# Indexes
#
#  index_users_on_api_key_id  (api_key_id)
#

class User < ActiveRecord::Base
	has_many :playlists
	belongs_to :api_key


	def self.find_for_verfied_token_response(auth)
	  user = User.where(:provider => "google_oauth2", :uid => auth[:id]).first

	  unless user
	    user = User.create(:name => auth[:name],
	                       :email => auth[:email],
	                       :provider => "google_oauth2",
	                       :uid => auth[:id])
	    user.api_key = ApiKey.create!
	  end

	  user
	end
end
