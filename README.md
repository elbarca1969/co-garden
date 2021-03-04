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

# 本番環境
アプリケーションURL  https://co-garden.herokuapp.com/
<br>
ログイン情報
- ログインページにある、「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインし、アプリケーションを閲覧することができます。

もしくは以下の項目を入力するとテスト用アカウントでの閲覧も可能です。
- テスト用アカウント
  - メールアドレス : ichiro@cogarden.com
  - パスワード : 111111one

<br>

# 利用方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
  - ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- コンテンツ作成の流れは以下の通りです。
  - 右下に表示されている「コンテンツ作成ページ遷移ボタン」をクリック→コンテンツ作成ページに遷移→学年・教科・カテゴリー・問題・答えを入力し、「送信する」をクリックで作成が完了
- コンテンツ削除の流れは以下の通りです。(コンテンツ作成後は削除をお願いします)
  - トップページに表示されている作成したコンテンツをクリックしコンテンツ詳細ページに遷移→右上の「•••」をクリック→「削除する」をクリック→モーダルが出現→「削除する」をクリックでコンテンツを削除
- コメントをする流れは以下の通りです。
  - コンテンツをクリックしコンテンツ詳細ページに遷移→「コメントを見る」をクリック→コメント入力欄に入力し「送信」をクリックで完了
- コメント削除の流れは以下の通りです。(コメント投稿後は削除をお願いします)
  - コメントの右側に表示されている「削除する」をクリックでコメントを削除
- 回答済の流れは以下の通りです。
  - コンテンツの下部に表示されている「回答済にする」ボタンをクリックで回答済にすることができる
  - 「回答済」ボタンにカーソルを合わせると「未回答にする」と表示されるので、クリックすれば回答済を解除することができる
- トライの流れは以下の通りです。
  - コンテンツの下部に表示されている「トライする」ボタンをクリックすると、トライコンテンツに追加することができる
  - トップページの「トライコンテンツ」をクリック→トライコンテンツ一覧ページに遷移し、トライコンテンツを閲覧することができる
  - 「トライ中」ボタンにカーソルを合わせると「トライをやめる」と表示されるので、クリックすればトライを解除することができる
- フォローの流れは以下の通りです。
  - ヘッダーの虫眼鏡アイコンをクリック→「ユーザー」をクリックしユーザー検索ページに遷移→ユーザー名をクリックし、ユーザー詳細ページに遷移→「フォローする」をクリックでフォローが完了
  - フォロー後「フォロー中」ボタンにカーソルを合わせると「フォローを解除」と表示されるので、クリックすればフォローを解除することができる
- ログアウトの流れは以下の通りです。(確認後、ログアウト処理をお願いします)
  - ヘッダーのプロフィールアイコンをクリックするとメニューが表示される→「ログアウト」をクリックするとログアウトが完了

<br>

# 洗い出した要件
| 機能             | 目的                                                                                  |
|-----------------|---------------------------------------------------------------------------------------|
| ユーザー管理機能   | ユーザーの新規登録、ログイン・ログアウトをできるようにするため                                  |
| コンテンツ投稿機能 | 学習した内容や書き留めておきたい問題等をアプリケーション上で保存・管理できるようにするため           |
| 検索機能         | 見たいコンテンツやユーザーを見つけることができるようにするため                                   |
| コメント機能      | コンテンツに対して質問や修正依頼がある場合、コンテンツ作成者とコミュニケーションを取れるようにするため |
| 回答済機能       | どのコンテンツを理解しているか、どのコンテンツに取り組むべきかをわかりやすくするため                 |
| トライ機能       | 他ユーザーの知識を用いながら自分だけのコンテンツ集を作ることができるようにするため                  |
| フォロー機能      | ユーザー同士の繋がりを深め、互いに高め合い、知識の共有を活発に行えるようにするため                  |

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
