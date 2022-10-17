class CreateApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :applies do |t|
      t.string :name
      t.string :phonenumber
      t.string :address
      t.string :email
      t.string :avatar

      t.timestamps
    end
  end
end
