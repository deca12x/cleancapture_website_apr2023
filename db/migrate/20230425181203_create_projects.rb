class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :project_title
      t.text :project_description
      t.string :company_name
      t.text :company_description
      t.date :completion_date
      t.string :sector
      t.string :service
      t.string :website
      t.string :instagram
      t.string :linkedin
      t.string :tiktok
      t.string :facebook

      t.timestamps
    end
  end
end
