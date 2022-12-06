class Order < ApplicationRecord
  has_many(:lineitems, dependent: :destroy)

  PAY_TYPES=["check","paypal","credit"]
  validates(:name,:address,:email, presence: true)
  validates(:paytype,inclusion: PAY_TYPES)
end
