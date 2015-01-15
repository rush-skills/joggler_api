# == Schema Information
#
# Table name: api_keys
#
#  id           :integer          not null, primary key
#  access_token :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ApiKey < ActiveRecord::Base
	before_create :generate_access_token
  has_one :user
	private
	  def generate_access_token
	    begin
	      self.access_token = SecureRandom.hex
	    end while self.class.exists?(access_token: access_token)
	  end

end
