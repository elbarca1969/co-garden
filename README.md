# アプリケーション名
**Co-garden**(コー・ガーデン)
<br>
訳すと「共同庭」という意味です。ユーザー同士が学力で競争するのではなく共創(**co**-creation)し、人との繋がり(**co**mmunication)を深めることで互いに高め合い、自分たちで庭(**garden**)を手入れするようにユーザー全員が当事者となって作っていくアプリケーションという想いを込めました。

<br>

# アプリケーション概要
ユーザー新規登録もしくは自身のアカウントにログインすると、コンテンツの閲覧、コンテンツの作成、コンテンツにコメント、コンテンツ・ユーザーの検索、コンテンツを回答済、コンテンツをトライ、他ユーザーをフォローすることができます。
自身が作成したコンテンツは、時系列順に「トップページ」に表示されます。他ユーザーが作成したコンテンツはコンテンツ検索ページもしくは各ユーザー詳細ページで閲覧することができます。コンテンツは「公開」と「非公開」を選択することができ、非公開設定のコンテンツは作成者本人のみ閲覧することができます。
コンテンツに対してコメントをすることができます。
コンテンツを「回答済」にすることができ、どのコンテンツに取り組むべきなのかわかりやすくすることができます。
コンテンツを「トライ」すると、自身のトライコンテンツに追加することができます。ユーザー詳細ページから各ユーザーがトライしているコンテンツを閲覧することができます。
各ページの検索機能を利用し「学年・教科・カテゴリー」を入力すれば、見たいコンテンツを素早く見つけることができます。
ユーザー検索ページからユーザーを見つけることができ、フォローすることができます。

<br>

# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| user_name          | string  | null: false, unique: true |
| introduction       | string  |                           |
| prefecture_id      | integer |                           |
| birthday           | date    |                           |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many :contents
- has_many :relationships
- has_many :followings, through: :relationships
- has_many :reverse_of_relationships
- has_many :followers, through: :reverse_of_relationships
- has_many :comments
- has_many :tries
- has_many :answers
- belongs_to_active_hash :prefecture


## contents テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| grade_id    | integer    | null: false                    |
| subject_id  | integer    | null: false                    |
| category    | string     | null: false                    |
| release_id  | integer    | null: false                    |
| user        | references | null: false, foreign_key: true | 

### Association

- has_many :tries
- has_many :answers
- has_many :comments
- belongs_to :user
- belongs_to_active_hash :grade
- belongs_to_active_hash :subject
- belongs_to_active_hash :release
- has_rich_text :question
- has_rich_text :answer
- has_rich_text :explanation


## comments テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| comment_content | text       | null: false                    |
| user            | references | null: false, foreign_key: true |
| content         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :content


## tries テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| content | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :content


## answers テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| content | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :content


## relationships テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user     | references | null: false, foreign_key: true |
| follow   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :follow
