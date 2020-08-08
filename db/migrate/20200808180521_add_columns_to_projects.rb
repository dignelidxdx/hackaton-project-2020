class AddColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :company, :string
    add_column :projects, :company_description, :string
    add_column :projects, :company_website, :string
    add_column :projects, :duration, :string
    add_column :projects, :technologies, :string
  end
end
