# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  body            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  construction_id :integer
#

class Comment < ApplicationRecord
   belongs_to :user
   belongs_to :construction

   validates :body, presence: true
end
