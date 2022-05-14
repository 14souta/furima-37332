FactoryBot.define do
  factory :item do
    image {Faker::Lorem.sentence}
    name {"商品名"}
    price {"300"}
    status_id {2}
    description {"商品説明"}
    category_id {2}
    area_id {2}
    payment_id {2}
    shipment_id {2}
    user_id {1}
    
  end

  after(:build) do |item|
    item.image.attach(io: File.open('public/test_image.png'), filename: 'test_image.png')
  end
end

