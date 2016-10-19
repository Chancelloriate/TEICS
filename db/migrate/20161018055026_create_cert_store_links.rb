class CreateCertStoreLinks < ActiveRecord::Migration
  def change
    create_table :cert_store_links do |t|
      t.integer :CertStoreLinkId
      t.integer :SourceLinkId
      t.integer :CertStoreId
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
