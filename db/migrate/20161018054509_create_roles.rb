class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :RoleId
      t.integer :SourceId
      t.string :RoleDescription
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
