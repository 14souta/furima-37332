class OrderAddress
  include ActiveModel::Model
  attr_accessor :order, :address, :post_code, :area_id, :city, :building_name, :phone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :address
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :area_id
    validates :city
    validates :phone_number, numericality: { only_integer: true }
    validates :user_id
    validates :item_id
    validates :token
  end

  with_options numericality: { other_than: 1 } do
    validates :area_id
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(order: order, address: address, post_code: post_code, area_id: area_id, city: city, building_name: building_name, phone_number: phone_number)
  end
end

