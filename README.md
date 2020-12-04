# テーブル設計

 ## usersテーブル

|culumn    | type  | option    |
|----------|-------|-----------|
|email     | string| not null  |
|password  | string| not null  |
|name      | string| not null  |
|profile   | text  | not null  |
|occupation| text  | not null  |
|position  | text  | not null  |

### Association

- has_many :prototypes
- has_many :comments


 ## prototypesテーブル

|culumn    | type  | option    |
|----------|-------|-----------|
|title     | string| not null  |
|catch_copy| text  | not null  |
|concept   | text  | not null  |
|image     |activestrageで実装  |
|user      |references|        |

### Association

- belongs_to :user
- has_many   :comments

## commentsテーブル
|culumn    | type  | option    |
|----------|-------|-----------|
|text      | text  | not null  |
|user      |references|        |
|prototype |references|        |

### Association

- has_many :user
- has_many :prototype

