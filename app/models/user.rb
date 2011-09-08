class User < ActiveRecord::Base
  include Clearance::User
  has_many :account_entries
end
