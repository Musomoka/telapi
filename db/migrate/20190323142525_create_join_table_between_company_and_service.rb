class CreateJoinTableBetweenCompanyAndService < ActiveRecord::Migration[5.0]
  def change
    create_table :company_service, id: false do |t|
      t.references :company, index: true, foreign_key: true
      t.references :services, index: true, foreign_key: true
    end
  end
end
