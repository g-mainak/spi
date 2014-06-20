class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :day
      t.string :lecture

      t.timestamps
    end
  end
end
