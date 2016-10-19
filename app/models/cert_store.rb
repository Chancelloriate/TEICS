class CertStore < ActiveRecord::Base
  belongs_to :source
  belongs_to :environment
  belongs_to :identity_type
  has_many :cert_store_links
  has_many :cert_store_roles


end
