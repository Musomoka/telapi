class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :email
      t.string :location
      t.string :cellphone
      t.string :telephone
      t.string :description

      t.timestamps null: false
    end
  end
end
