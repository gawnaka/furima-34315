
# DB 設計

## users table

| Column             　| Type                | Options                 |
|--------------------　|---------------------|-------------------------|
| email              　| string              | null: false             |
| password           　| string              | null: false             |
| name               　| string              | null: false             |
| nickname             |   string            | null: false             |

### Association

* has_many :items
* has_many :comments

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
|  weight-bold-text                   | text       | null: false       |
|  price-content                       | text      | null: false       |
|  user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| text        | text       | null: false       |
| items       | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :items
- belongs_to :user

## orders table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| form-text   | text       | null: false       |
| items       | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :items
- belongs_to :user