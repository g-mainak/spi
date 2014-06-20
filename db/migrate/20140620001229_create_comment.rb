class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :user
      t.references :question

      t.timestamps
    end
  end
end
