class ChangeColumnsPagesSections < ActiveRecord::Migration[6.0]
  def change
    change_column_null :pages, :subject_id, true
    change_column_null :sections, :page_id, true
  end
end
