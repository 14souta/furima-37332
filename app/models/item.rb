class Item < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :status_id, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :area_id, presence: true
  validates :payment_id, presence: true
  validates :shipment_id, presence: true
  validates :image, presence: true

  has_one :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :status
  belongs_to :area
  belongs_to :payment
  belongs_to :shipment



  validates :price, numericality: { with: /\A[0-9]+\z/, message: 'Half-width number' }
  validates :price, numericality: { greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'Out of setting range' }



  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :status_id,   numericality: { other_than: 1 , message: "can't be blank"}
  validates :area_id,     numericality: { other_than: 1 , message: "can't be blank"}
  validates :payment_id,  numericality: { other_than: 1 , message: "can't be blank"}
  validates :shipment_id, numericality: { other_than: 1 , message: "can't be blank"}



end