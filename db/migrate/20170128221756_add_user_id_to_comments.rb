class AddUserIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :construction, foreign_key: true
  end
end
