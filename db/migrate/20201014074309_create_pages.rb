class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.references :subject, null: false, foreign_key: true
      t.string :name, limit: 25
      t.string :permalink, :index => true
      t.integer :position
      t.boolean :visible, :default => false

      t.timestamps
    end
  end
end
