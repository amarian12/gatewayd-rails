class RippleAddress < ActiveRecord::Base
  has_many :ripple_transactions
  validates_presence_of :address, :type
end
