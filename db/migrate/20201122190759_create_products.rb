class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :subtitle
      t.string :url
      t.text :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
