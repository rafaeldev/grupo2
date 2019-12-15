class AddCompanyReferenceToJob < ActiveRecord::Migration[6.0]
  def change
    add_reference :jobs, :company, foreign_key: true
  end
end
