class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }
  validates :password , presence: true, length: { maximum: 255 }
  validates :name, presence: true, length: { maximum: 255 }
  # validates :status, inclusion: {in: 0..1 }
  validates :status, inclusion: {in: %w(active inactive) }
   enum status: [ :active, :inactive ]
end
