json.extract! company, :id, :name, :address, :phone1, :phone2, :email, :site, :cnpj, :about, :created_at, :updated_at
json.url company_url(company, format: :json)
