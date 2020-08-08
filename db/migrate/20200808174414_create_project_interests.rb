class CreateProjectInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :project_interests do |t|
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :favorite
      t.boolean :interest
      t.string :status

      t.timestamps
    end
  end
end
