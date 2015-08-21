class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.integer :user_id
      t.string  :title
      t.timestamps
    end
  end
end
