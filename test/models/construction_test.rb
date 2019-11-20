# == Schema Information
#
# Table name: constructions
#
#  id          :integer          not null, primary key
#  name        :string
#  image_url   :string
#  capacity    :integer
#  city        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'test_helper'

class ConstructionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
