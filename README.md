# README

# テーブル設計

##  usersテーブル

|      Column        |    Type    |             Options             |
| ------------------ | ---------- | ------------------------------- |
| nickname           | string     | null: false                     |
| email              | string     | null: false, unipue: true       |
| encrypted_password | string     | null: false                     |
| profile_image      | string     |                                 |

### Association

- has_many : items
- has_many : coordinate
- has_many : coordinate

## items テーブル

|       Column       |    Type    |             Options             |
| ------------------ | ---------- | ------------------------------- |
| item_name          | string     | null: false                     |
| item_category_id   | integer    | null: false                     |
| item_info          | text       |                                 |
| price              | integer    |                                 |
| link               | string     |                                 |
| user               | references | null: false, foreign_key: true  |

### Association

- has_many : coordinate
- belongs_to : user

## coordinate テーブル

|      Column     |    Type    |            Options             |
| --------------- | ---------- | ------------------------------ |
| coordinate_info |            |                                |
| user            | references | null: false, foreign_key: true |


### Association

- has_many : items
- belongs_to : user

## coordinate_items テーブル

|       Column        |    Type    |            Options             |
| ------------------- | ---------- | ------------------------------ |
| coordinate          | references | null: false, foreign_key: true |
| item                | references | null: false, foreign_key: true |



### Association

- belongs_to :coordinate
- belongs_to :item

## coordinate_comments テーブル

|       Column        |    Type    |            Options             |
| ------------------- | ---------- | ------------------------------ |
| content             | text       | null: false                    |
| user                | references | null: false, foreign_key: true |
| coordinate          | references | null: false, foreign_key: true |

### Association

- belongs_to :coordinate
- belongs_to :user

## item_comments テーブル

|       Column        |    Type    |            Options             |
| ------------------- | ---------- | ------------------------------ |
| content             | text       | null: false                    |
| user                | references | null: false, foreign_key: true |
| item                | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user

* ...
