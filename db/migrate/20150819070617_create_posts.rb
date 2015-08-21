class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :discussion_id
      t.integer :user_id
      t.text    :text

      t.timestamps
    end
  end
end
