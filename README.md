## users テーブル

| Column             | Type   | Options      |
| ------------------ | ------ | ------------ |
| nickname           | string | null: false  |
| email              | string | unique: true |
| encrypted_password | string | null: false  |
| family_name        | string | null: false  |
| first_name         | string | null: false  |
| family_name_kana   | string | null: false  |
| first_nae_kana     | string | null: false  |
| birth_day          | date   | null: false  |

##　アソシエーション
has_many items
belongs_to :card
belongs_to :destination

## items テーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| name         | string      | null: false                    |
| price        | integer     | null: false                    |
| status_id    | integer     | null: false                    |
| description  | text        | null: false                    |
| category     | string      | null: false                    |
| area         | string      | null: false                    |
| payment      | string      | null: false                    |
| shipment     | integer     | null: false                    |
| user         | references  | null: false, foreign_key: true |

## アソシエーション
belongs_to :user


## orders テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user_id      | integer    | null: false, foreign_key: true |


## アソシエーション
belongs_to :user

## addresses テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user_id           | integer    | null: false, foreign_key: true |
| address           | string     | null: false                    |
| family_name       | string     | null: false                    |
| first_name        | string     | null: false                    |
| family_name_kana  | string     | null: false                    |
| first_name_kana   | string     | null: false                    |
| post_code         | integer    | null: false                    |
| prefecture        | string     | null: false                    |
| city  | string    |
| building_name     | string     | null: false                    |
| phone_number      | string     | null: false                    |

## アソシエーション
belongs_to :user


## image テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| image_id | integer | null: false |

## アソシエーション

belongs_to :items
