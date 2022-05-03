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

## items テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| name         | string | null: false |
| price        | string | null: false |
| status       | string | null: false |
| description  | string | null: false |
| image        | string | null: false |

## アソシエーション

