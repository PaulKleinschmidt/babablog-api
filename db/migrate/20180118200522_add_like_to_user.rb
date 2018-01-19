class AddLikeToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :like, foreign_key: true
  end
end
