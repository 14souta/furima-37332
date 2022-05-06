## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| family_name        | string | null: false |
| first_name         | string | null: false |
| family_name_kana   | string | null: false |
| first_nae_kana     | string | null: false |
| birth_day          | string | null: false |

##　アソシエーション
has_many items
belongs_to :card
belongs_to :destination

## items テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| name         | string     | null: false                    |
| price        | string     | null: false                    |
| status       | string     | null: false                    |
| description  | string     | null: false                    |
| image        | string     | null: false                    |
| user_id      | integer    | null: false, foreign_key: true |

## アソシエーション
belongs_to :user
has_many :items

## card テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user_id      | integer    | null: false, foreign_key: true |
| card_id      | string     | null: false                    |


## アソシエーション
belongs_to :user

## destination テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| user_id           | integer    | null: false, foreign_key: true |
| password          | string     | null: false                    |
| address           | string     | null: false                    |
| family_name       | string     | null: false                    |
| first_name        | string     | null: false                    |
| family_name_kana  | string     | null: false                    |
| first_name_kana   | string     | null: false                    |

## アソシエーション
belongs_to :user


## image テーブル

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| image_id | integer | null: false |

## アソシエーション

belongs_to :items
