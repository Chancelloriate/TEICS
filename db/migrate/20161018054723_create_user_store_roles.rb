class CreateUserStoreRoles < ActiveRecord::Migration
  def change
    create_table :user_store_roles do |t|
      t.integer :UserStoreRoleId
      t.integer :RoleId
      t.integer :UserStoreId
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
