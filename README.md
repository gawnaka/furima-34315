# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# DB 設計

## users table

| Column              | Type               | Options                 |
|---------------------|--------------------|-------------------------|
| email               | string             | null: false,default     |
| encrypted_password  | string             | null: false,default     |
| last_name           | string             | null: false             |
| first_name          | string             | null: false             |
| last_name_kana      | string             | null: false             |
| first_name_kana     | string             | null: false             |
| birth_date          | date               | null: false             |
| nickname            | string             | null: false             |


### Association

* has_many :items
* has_many :comments
* has_many :orders
 add_index :users, :email,                unique: true

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
|  items-text                         | text       | null: false       |
|  item-image                         | text       | null: false       |
|  indispensable                      | text       | null: false       |
|  price_content                      | text       | null: false       |
|  sell_pricz                         | integer    | null: false       |
|  user                               | references | foreign_key: true |

### Association
 
- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| item        | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user

## orders table

| Column         | Type       | Options           |
|----------------|------------|-------------------|
| buy_item_text  | text       | null: false       |
| item           | references | foreign_key: true |
| user           | references | foreign_key: true |

### Association

- has_one :item,through: order
- has_one :user


## address table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| form_text   | text       | null: false       |
| items       | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :order