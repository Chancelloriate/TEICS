class CreateUserSourceLinks < ActiveRecord::Migration
  def change
    create_table :user_source_links do |t|
      t.integer :UserSourceLinkId
      t.integer :SourceLinkId
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
