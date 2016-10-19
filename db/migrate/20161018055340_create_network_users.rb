class CreateNetworkUsers < ActiveRecord::Migration
  def change
    create_table :network_users do |t|
      t.integer :NetworkUserId
      t.string :NetworkFirstName
      t.string :NetworkLastName
      t.string :Email
      t.string :NetworkUserName
      t.string :NetworkPassword
      t.string :CreatedBy
      t.datetime :CreatedDate
      t.string :LastModifiedBy
      t.datetime :LastModifiedDate
      t.boolean :IsDeleted

      t.timestamps null: false
    end
  end
end
