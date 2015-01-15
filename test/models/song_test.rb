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
# Indexes
#
#  index_songs_on_playlist_id  (playlist_id)
#

require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
