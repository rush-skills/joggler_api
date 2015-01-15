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
# Indexes
#
#  index_playlists_on_user_id  (user_id)
#

require 'test_helper'

class PlaylistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
