class AddReferenceToApplies < ActiveRecord::Migration[6.1]
  def change
    add_reference(:applies, :jobs, index: true)
  end
end
