class Service < ApplicationRecord
  belongs_to :category
  has_many  :companies
  has_many  :companies, through: :company_services
end
