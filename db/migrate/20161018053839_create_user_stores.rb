class CreateUserStores < ActiveRecord::Migration
  def change
    create_table :user_stores do |t|
      t.integer :UserStoreId
      t.integer :SourceId
      t.integer :EnvironmentId
      t.integer :IdentityTypeId
      t.string :UserStoreName
      t.string :UserStorePassword
      t.datetime :UserStoreExpirationDate
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
