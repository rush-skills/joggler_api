# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  playlist_id :integer
#  title       :string
#  metadata    :text
#  url         :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :playlist
end
