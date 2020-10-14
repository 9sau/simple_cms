class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.references :page, null: false, foreign_key: true
      t.string :name, limit: 25
      t.integer :position
      t.boolean :visible, :default => false
      t.string :content_type, limit: 25
      t.text :content

      t.timestamps
    end
  end
end
