class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.text :github_link
      t.text :heroku_link
      t.string :picture
      t.string :string

      t.timestamps
    end
  end
end
