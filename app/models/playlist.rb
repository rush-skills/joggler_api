# == Schema Information
#
# Table name: playlists
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  latitute    :float
#  longitude   :float
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :songs
end
