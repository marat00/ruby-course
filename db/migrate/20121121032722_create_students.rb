class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :course

      t.timestamps
    end
  end

  def destroy
  	drop_table :students
  end
end
