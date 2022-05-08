## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| family_name        | string | null: false               |
| first_name         | string | null: false               |
| family_name_kana   | string | null: false               |
| first_nae_kana     | string | null: false               |
| birth_day          | date   | null: false               |

##　アソシエーション
has_many :items
has_many :orders

## items テーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| name         | string      | null: false                    |
| price        | integer     | null: false                    |
| status_id    | integer     | null: false                    |
| description  | text        | null: false                    |
| category_id  | integer     | null: false                    |
| area_id      | integer     | null: false                    |
| payment_id   | integer     | null: false                    |
| shipment_id  | integer     | null: false                    |
| user         | references  | null: false, foreign_key: true |

## アソシエーション
has_one :user
has_one :order
belongs_to_active_hash :status
belongs_to_active_hash :area
belongs_to_active_hash :category
belongs_to_active_hash :payment
belongs_to_active_hash :shipment

## orders テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |


## アソシエーション
belongs_to :user
has_one :address
has_many :items

## addresses テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| order             | references | null: false, foreign_key: true |
| address           | string     | null: false                    |
| post_code         | string     | null: false                    |
| area_id           | integer    | null: false                    |
| city              | string     | null: false                    |
| building_name     | string     | 
| phone_number      | string     | null: false                    |

## アソシエーション
belongs_to :order
belongs_to_active_hash :area



