# **Co-garden**(コー・ガーデン)
訳すと「共同庭」という意味です。ユーザー同士が学力で競争するのではなく共創(**co**-creation)し、人との繋がり(**co**mmunication)を深めることで互いに高め合い、自分たちで庭(**garden**)を手入れするようにユーザー全員が当事者となって作っていくアプリケーションという想いを込めました。

<br>

# アプリケーション概要
ノートのように学習内容を記録できることに加え、他ユーザーの学習内容を閲覧・トライすることができるので、ユーザー全員で学習意欲と学力を高め合うことができるアプリケーションです。

<br>

# 本番環境
アプリケーションURL  http://35.73.72.78/
<br>
ログイン情報
- ログインページにある、「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインし、アプリケーションを閲覧することができます。

もしくは以下の項目を入力するとテスト用アカウントでの閲覧も可能です。
- テスト用アカウント
  - メールアドレス : ichiro@cogarden.com
  - パスワード : 111one

<br>

# 利用方法
- 上記の通りログインして下さい。
  - 同時に複数の方がログインしている場合に、ログインできない可能性があります。
- コンテンツ作成の流れは以下の通りです。
  - 右下に表示されている「コンテンツ作成ページ遷移ボタン」をクリック→コンテンツ作成ページに遷移→学年・教科・カテゴリー・問題・答えを入力し、「送信する」をクリックで作成が完了
- コメントをする流れは以下の通りです。
  - コンテンツをクリックしコンテンツ詳細ページに遷移→「コメントを見る」をクリック→コメント入力欄に入力し「送信」をクリックで完了
- 回答済の流れは以下の通りです。
  - コンテンツの下部に表示されている「回答済にする」ボタンをクリックで回答済にすることができる
- トライの流れは以下の通りです。
  - コンテンツの下部に表示されている「トライする」ボタンをクリックすると、トライコンテンツに追加することができる
  - トップページの「トライコンテンツ」をクリック→トライコンテンツ一覧ページに遷移し、トライコンテンツを閲覧することができる
- 確認後、ログアウト処理をお願いします。

<br>

# 目指した課題解決
- 現在の教育
  - コロナ禍でGIGAスクール構想の動きが急速に進みました。IT技術の導入で、学習者にとって最適化された学習環境を作ることができます。
- これからの教育の課題
  - 学習者同士の繋がり・関わりが減少するという課題が出てくると予想しました。学習者同士が自由に繋がり、同じ課題を共有し、互いに高め合える場が求められると考えました。
- 課題解決のために考えたこと
  - アウトプットの場と人が繋がる場を合わせたアプリケーションを作成することで、学習意欲と学力の向上を期待できるのではないかと考えました。
  - 同じ課題に向き合っているユーザーがいると知ることで、共感することができ心理的な安心感が生まれます。同時に「自分もこの場に貢献したい」という主体性をもち、一人ひとりが当事者となってアプリケーションを活用することで共創性が育まれると考えました。

<br>

# 洗い出した要件
| 機能             | 目的                                                                                  | 所要時間 |
|-----------------|---------------------------------------------------------------------------------------|--------|
| ユーザー管理機能   | ユーザーの新規登録、ログイン・ログアウトをできるようにするため                                  | 約12h   |
| コンテンツ機能    | 学習した内容や書き留めておきたい問題等をアプリケーション上で保存・管理できるようにするため           | 約25h   |
| 検索機能         | 見たいコンテンツやユーザーを見つけることができるようにするため                                   | 約7h   |
| コメント機能      | コンテンツに対して質問や修正依頼がある場合、コンテンツ作成者とコミュニケーションを取れるようにするため | 約5h   |
| 回答済機能       | どのコンテンツを理解しているか、どのコンテンツに取り組むべきかをわかりやすくするため                 | 約3h   |
| トライ機能       | 他ユーザーの知識を用いながら自分だけのコンテンツ集を作ることができるようにするため                  | 約8h    |
| フォロー機能      | ユーザー同士の繋がりを深め、互いに高め合い、知識の共有を活発に行えるようにするため                  | 約5h   |

<br>

# ユーザーからのフィードバック
### 【良い点】
・気になる相手の作成問題や関心ある問題を見れるのが良いと感じた。<br>
・各ページに検索機能が設置されており、求めるコンテンツを見つけやすい。<br>

### 【改善点】
・ヘッダーのアイコンだけでは機能が分かりにくい。<br>
- 改善点を元に追加した実装
  - カーソルが合ったときに吹き出しを表示し、機能をわかりやすいように実装しました。

・コンテンツの学年と教科のそれぞれの違いがわかりづらい。<br>
- 改善点を元に追加した実装
  - 全て同じ色(背景色が黒、文字色が白)で表示していた部分を変更し、各学年と各教科に色を指定しました。

<br>

# 実装した機能についてのGIFと説明
### ユーザー管理機能
- ユーザーの新規登録
[![Image from Gyazo](https://i.gyazo.com/6f319cc7b6514906a938f31c9f76468a.gif)](https://gyazo.com/6f319cc7b6514906a938f31c9f76468a)
・ニックネーム、ユーザーネーム、メールアドレス、パスワード、確認用パスワードを入力すると新規登録することができます。<br>

- ログイン
[![Image from Gyazo](https://i.gyazo.com/c0ae96e8ceb6338dffeb5e99a38f2f74.gif)](https://gyazo.com/c0ae96e8ceb6338dffeb5e99a38f2f74)
・メールアドレスとパスワードを入力するとログインすることができます。<br>
・ログイン状態でないとアプリケーションを使用することができません。<br>

- ゲストログイン
[![Image from Gyazo](https://i.gyazo.com/0ed3776cde2692dab8419b4125531f50.gif)](https://gyazo.com/0ed3776cde2692dab8419b4125531f50)
・「ゲストログイン(閲覧用)」をクリックすると、ゲストユーザーとしてログインすることができます。<br>

- ログアウト
[![Image from Gyazo](https://i.gyazo.com/0601577a704f3f7e0bc1bdf6665cca5c.gif)](https://gyazo.com/0601577a704f3f7e0bc1bdf6665cca5c)
・ヘッダーのプロフィールアイコン(一番右)をクリックするとメニューが出現します。メニュー内の「ログアウト」をクリックするとログアウトすることができます。<br>

- ユーザー詳細ページ
[![Image from Gyazo](https://i.gyazo.com/83caa1bb4a60e7ef665d04978dc037e6.gif)](https://gyazo.com/83caa1bb4a60e7ef665d04978dc037e6)
・ヘッダーのプロフィールアイコン(一番右)をクリックするとメニューが出現します。メニュー内のユーザー名をクリックすると自身のユーザー詳細ページに遷移することができます。<br>
・ユーザー本人には「プロフィールを編集」、本人以外には「フォロー」ボタンが表示されます。<br>
・設定されていれば自己紹介、住まい、生年月日が表示されます。<br>
・作成したコンテンツが時系列順に表示されます。<br>

- アカウント編集
[![Image from Gyazo](https://i.gyazo.com/f8b3c0f3d31330e4ef9bebca9e239dbc.gif)](https://gyazo.com/f8b3c0f3d31330e4ef9bebca9e239dbc)
・自身のユーザー詳細ページの上部にある「プロフィールを編集」をクリックすると編集ページに遷移します。<br>
・ニックネーム、ユーザーネーム、自己紹介、住まい、生年月日、メールアドレスの変更をすることができます。<br>

### コンテンツ機能
- コンテンツ投稿
[![Image from Gyazo](https://i.gyazo.com/82afde0e525dfcc2504efb77d4c1e4c3.gif)](https://gyazo.com/82afde0e525dfcc2504efb77d4c1e4c3)
・右下にあるペンのアイコンをクリックするとコンテンツ作成ページに遷移します。<br>
・学年、教科、リリースを選択、カテゴリー、問題、答え、解説を入力し「送信する」をクリックすると作成することができます。<br>
・「解説」は任意入力項目です。<br>
・写真を複数枚添付することができます。<br>

- コンテンツ詳細ページ
[![Image from Gyazo](https://i.gyazo.com/94ba52e4e87dad400095353e171fdd40.gif)](https://gyazo.com/94ba52e4e87dad400095353e171fdd40)
・作成されたコンテンツをクリックするとコンテンツ詳細ページに遷移します。<br>
・答えと解説は「答えを見る」をクリックすると表示されます。<br>
・コンテンツ作成者本人には、右上に「•••」が表示され、それをクリックするとメニューが出現します。メニューには「編集する」と「削除する」が表示されます。<br>

- コンテンツ編集
[![Image from Gyazo](https://i.gyazo.com/dd489baf06fdb5c9c2e2ae6ab62cbeab.gif)](https://gyazo.com/dd489baf06fdb5c9c2e2ae6ab62cbeab)
・コンテンツ作成者本人のみ編集することができます。<br>
・コンテンツ詳細ページのメニュー内にある「編集する」をクリックするとコンテンツ編集ページに遷移します。<br>

- コンテンツ削除
[![Image from Gyazo](https://i.gyazo.com/ecce069163e2b66bba1a3ec77847f08b.gif)](https://gyazo.com/ecce069163e2b66bba1a3ec77847f08b)
・コンテンツ作成者本人のみ削除することができます。<br>
・コンテンツ詳細ページのメニュー内にある「削除する」をクリックするとモーダルが出現します。モーダル内の「削除する」をクリックするとコンテンツを削除することができます。<br>

### 検索機能
- コンテンツ検索
[![Image from Gyazo](https://i.gyazo.com/bf5252fbcc0caf125b8ca7386c1460e0.gif)](https://gyazo.com/bf5252fbcc0caf125b8ca7386c1460e0)
・ヘッダーの虫眼鏡のアイコンをクリックするとコンテンツ検索ページに遷移します。<br>
・各ページにある検索フォームを用いると、条件を絞ってコンテンツを検索することができます。<br>

- ユーザー検索
[![Image from Gyazo](https://i.gyazo.com/591f856dba02b27c1c505186e3e9c3e3.gif)](https://gyazo.com/591f856dba02b27c1c505186e3e9c3e3)
・コンテンツ検索ページにある「ユーザー」をクリックするとユーザー検索ページに遷移します。<br>

### コメント機能
- コメント投稿
[![Image from Gyazo](https://i.gyazo.com/44bec571e33126d292e807f81a75998f.gif)](https://gyazo.com/44bec571e33126d292e807f81a75998f)
・コンテンツ詳細ページの下部にある「コメントを見る」をクリックするとコメント入力フォームが出現します。<br>
・コメントを入力し「送信」をクリックするとコメントを投稿することができます。<br>

- コメント削除
[![Image from Gyazo](https://i.gyazo.com/3a087f59b5956f62b8113f47035723f6.gif)](https://gyazo.com/3a087f59b5956f62b8113f47035723f6)
・コメント投稿者本人にのみ「削除する」が表示されます。<br>
・「削除する」をクリックするとコメントを削除することができます。<br>

### 回答済機能
- 回答済を押す
[![Image from Gyazo](https://i.gyazo.com/8defdc066defdc28e4f79296e068a067.gif)](https://gyazo.com/8defdc066defdc28e4f79296e068a067)
・「回答済にする」をクリックすると、コンテンツを回答済にすることができます。<br>
・「回答済」にカーソルを合わせると「未回答にする」が表示され、それをクリックすると回答済を解除することができます。<br>

### トライ機能
- トライを押す
[![Image from Gyazo](https://i.gyazo.com/8b7bff17465474d70852a4bf8b29f24f.gif)](https://gyazo.com/8b7bff17465474d70852a4bf8b29f24f)
・「トライする」をクリックすると、そのコンテンツをトライコンテンツに追加することができます。<br>
・「トライ中」にカーソルを合わせると「トライをやめる」と表示され、それをクリックするとトライを解除することができます。<br>

- トライコンテンツページ
[![Image from Gyazo](https://i.gyazo.com/0e42e943f829d7d2f19fab641c423b10.gif)](https://gyazo.com/0e42e943f829d7d2f19fab641c423b10)
・トップページの「トライコンテンツ」もしくはヘッダーの画鋲のアイコンをクリックすると、自身のトライコンテンツ一覧ページに遷移します。<br>

- トライ中ユーザー一覧
[![Image from Gyazo](https://i.gyazo.com/a1482065e7b59b0b4b05a73e1568e73d.gif)](https://gyazo.com/a1482065e7b59b0b4b05a73e1568e73d)
・「トライ」ボタンの横に表示されている「◯人がトライ中」をクリックすると、そのコンテンツにトライしているユーザー一覧が表示されます。<br>

### フォロー機能
- フォローを押す
[![Image from Gyazo](https://i.gyazo.com/3091b32946b4e4425bdecb1359bb00a3.gif)](https://gyazo.com/3091b32946b4e4425bdecb1359bb00a3)
・他のユーザーの詳細ページに表示されている「フォロー」をクリックすれば、フォローすることができます。<br>
・「フォロー中」にカーソルを合わせると「フォロー解除」と表示されます。それをクリックするとフォローを解除することができます。<br>

- フォロー・フォロワーの一覧
[![Image from Gyazo](https://i.gyazo.com/0ca29144af08fae113bf7d04a63b25b6.gif)](https://gyazo.com/0ca29144af08fae113bf7d04a63b25b6)
・ユーザー詳細ページにフォロー中とフォロワーの人数が表示されます。<br>
・「フォロー中◯人」をクリックするとフォロー中一覧ページに遷移します。<br>
・「フォロワー◯人」をクリックするとフォロワー一覧ページに遷移します。<br>

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
