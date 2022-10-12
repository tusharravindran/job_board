class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :job_type
      t.string :location
      t.string :job_author
      t.boolean :remoke_ok
      t.string :apply_url

      t.timestamps
    end
  end
end
