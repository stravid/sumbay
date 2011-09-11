class AccountEntry < ActiveRecord::Base
  belongs_to :user

  validates :description, :length => { :minimum => 1 }
  validates_presence_of :amount, :description
  validates_numericality_of :amount
end
