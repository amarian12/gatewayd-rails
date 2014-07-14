class RippleTransaction < ActiveRecord::Base
  has_one :to_address
  has_one :from_address
  validates_presence_of :to_amount,
                        :to_currency,
                        :from_amount, 
                        :from_currency,
                        :to_issuer,
                        :from_issuer,
                        :to_address_id,
                        :from_address_id
  after_create :enqueue_outgoing
private 
  def enqueue_outgoing
    Resque.push 'payment:outgoing', id if state == 'outgoing'
  end
end

