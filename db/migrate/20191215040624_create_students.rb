class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :genre
      t.string :address
      t.string :phone1
      t.string :phone2
      t.date :birthday
      t.text :biograph

      t.timestamps
    end
  end
end
