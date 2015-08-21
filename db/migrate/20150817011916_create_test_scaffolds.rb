class CreateTestScaffolds < ActiveRecord::Migration
  def change
    create_table :test_scaffolds do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
