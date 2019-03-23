class Company < ActiveRecord::Base
    belongs_to :category
    has_many  :services
  has_many :services, through: :company_services
end
