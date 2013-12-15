class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :name
      t.string :url
      t.text :comment
      t.integer :student_id

      t.timestamps
    end
    add_index :urls, [:name, :comment, :url], unique: true
  end

  def destroy
    drop_table :urls
  end
end
