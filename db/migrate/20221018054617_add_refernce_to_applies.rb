class AddRefernceToApplies < ActiveRecord::Migration[6.1]
  def change
    
    add_reference(:applies, :jobs, index: true, foreign_key: true)
  
  end
end
