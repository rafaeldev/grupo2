class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :site
      t.string :cnpj
      t.text :about

      t.timestamps
    end
  end
end
