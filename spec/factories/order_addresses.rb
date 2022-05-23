FactoryBot.define do
  factory :order_address do
    address {'1-1'}
    post_code {'111-1111'}
    area_id {"2"}
    city {"2"}
    building_name {'岡山ビル'}
    phone_number {'0000000000'}
    token {"tok_abcdefghijk00000000000000000"}
  end
end