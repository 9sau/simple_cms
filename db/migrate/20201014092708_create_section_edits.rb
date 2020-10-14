class CreateSectionEdits < ActiveRecord::Migration[6.0]
  def change
    create_table :section_edits do |t|
      t.bigint :admin_user_id
      t.bigint :section_id
      t.string :summary

      t.timestamps
    end

    add_index :section_edits, ['admin_user_id', 'section_id']
  end
end
