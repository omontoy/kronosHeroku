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

class Construction < ApplicationRecord
   #belongs_to :user
   has_many :comments, :dependent => :delete_all
   
   #validates :user, presence: true

   validates :name, :image_url, :capacity, :city, :description, :code, presence: true

   validates :city, format: { with: /\A[a-zA-Z\s+\D]+\z/,
       message: "Solo permite letras" }

   validates :description, length: {minimum: 10}
end
