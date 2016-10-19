# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161018055717) do

  create_table "cert_store_links", force: :cascade do |t|
    t.integer  "CertStoreLinkId"
    t.integer  "SourceLinkId"
    t.integer  "CertStoreId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cert_store_roles", force: :cascade do |t|
    t.integer  "CertStoreRoleId"
    t.integer  "RoleId"
    t.integer  "CertStoreId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "cert_stores", force: :cascade do |t|
    t.integer  "CertStoreId"
    t.integer  "SourceId"
    t.integer  "EnvironmentId"
    t.integer  "IdentityTypeId"
    t.string   "CertStoreName"
    t.string   "CertStoreDescription"
    t.string   "CertStorePassword"
    t.datetime "CertStoreExpirationDate"
    t.string   "UNC"
    t.string   "MimeType"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "environments", force: :cascade do |t|
    t.integer  "EnvironmentId"
    t.string   "EnvironmentName"
    t.string   "EnvironmentDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "identity_types", force: :cascade do |t|
    t.integer  "IdentityTypeId"
    t.string   "IdentityTypeName"
    t.string   "IdentityTypeDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "member_groups", force: :cascade do |t|
    t.integer  "MemberGroupId"
    t.integer  "NetworkUserId"
    t.integer  "UserGroupId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "network_users", force: :cascade do |t|
    t.integer  "NetworkUserId"
    t.string   "NetworkFirstName"
    t.string   "NetworkLastName"
    t.string   "Email"
    t.string   "NetworkUserName"
    t.string   "NetworkPassword"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "roles", force: :cascade do |t|
    t.integer  "RoleId"
    t.integer  "SourceId"
    t.string   "RoleDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "source_links", force: :cascade do |t|
    t.integer  "SourceLinkId"
    t.string   "Hyperlink"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sources", force: :cascade do |t|
    t.integer  "SourceId"
    t.string   "SourceDescription"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "store_accesses", force: :cascade do |t|
    t.integer  "StoreAccessId"
    t.integer  "UserStoreId"
    t.integer  "CertStoreId"
    t.integer  "NetworkId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "teics_audit_logs", force: :cascade do |t|
    t.integer  "AuditLogId"
    t.integer  "RecordId"
    t.string   "TableName"
    t.string   "Attribute"
    t.string   "PreviousValue"
    t.string   "CurrentValue"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_access_audit_logs", force: :cascade do |t|
    t.integer  "AuditLogId"
    t.integer  "RecordId"
    t.string   "TableName"
    t.string   "Attribute"
    t.string   "PreviousValue"
    t.string   "CurrentValue"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer  "UserGroupId"
    t.string   "UserGroupName"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_source_links", force: :cascade do |t|
    t.integer  "UserSourceLinkId"
    t.integer  "SourceLinkId"
    t.integer  "UserStoreId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_store_roles", force: :cascade do |t|
    t.integer  "UserStoreRoleId"
    t.integer  "RoleId"
    t.integer  "UserStoreId"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "user_stores", force: :cascade do |t|
    t.integer  "UserStoreId"
    t.integer  "SourceId"
    t.integer  "EnvironmentId"
    t.integer  "IdentityTypeId"
    t.string   "UserStoreName"
    t.string   "UserStorePassword"
    t.datetime "UserStoreExpirationDate"
    t.string   "CreatedBy"
    t.datetime "CreatedDate"
    t.string   "LastModifiedBy"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
