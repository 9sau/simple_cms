class CreateJoinTableAdminUsersPages < ActiveRecord::Migration[6.0]
  def change
    create_join_table :admin_users, :pages do |t|
      t.index [:admin_user_id, :page_id]
    end
  end
end
