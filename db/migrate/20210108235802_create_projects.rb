class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.date :started
      t.date :finished
      t.string :state, default: 'propuesta'

      t.timestamps
    end
  end
end
