class CreateStoreAccesses < ActiveRecord::Migration
  def change
    create_table :store_accesses do |t|
      t.integer :StoreAccessId
      t.integer :UserStoreId
      t.integer :CertStoreId
      t.integer :NetworkId
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
