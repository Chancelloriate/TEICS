class CreateCertStores < ActiveRecord::Migration
  def change
    create_table :cert_stores do |t|
      t.integer :CertStoreId
      t.integer :SourceId
      t.integer :EnvironmentId
      t.integer :IdentityTypeId
      t.string :CertStoreName
      t.string :CertStoreDescription
      t.string :CertStorePassword
      t.datetime :CertStoreExpirationDate
      t.string :UNC
      t.string :MimeType
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
