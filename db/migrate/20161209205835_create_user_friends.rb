class CreateUserFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :user_friends do |t|
      t.string :user_id
      t.string :friend_id

      t.timestamps
    end
      add_index :user_friends, :user_id
      add_index :user_friends, :friend_id
      add_index :user_friends, [:user_id, :friend_id], unique: true
  end
end
