class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.text :content, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
