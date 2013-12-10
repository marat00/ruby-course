class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :url
      t.text :comment
      t.integer :student_id

      t.timestamps
    end
  end
end
