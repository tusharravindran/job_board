class AddStatusToApplies < ActiveRecord::Migration[6.1]
  def change
    add_column :applies, :status, :string
  end
end
