class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :user, presence: true
  validates :seller_id, presence: true
  validates :category_id, presence: true
  validates :postage_id, presence: true
  validates :condition_id, presence: true
  validates :shipping_day_id, presence: true
  validates :shippingpayer_id, presence: true
  validates :images, presence: true
  belongs_to :category
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :condition
    belongs_to_active_hash :shippingpayer
    belongs_to_active_hash :prefecture
    belongs_to_active_hash :shipping_day
    belongs_to_active_hash :status
end
