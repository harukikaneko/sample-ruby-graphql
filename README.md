# README

## GraphQL

### Type作成

DBテーブルスキーマと対応するようなTypeを作成するには以下のようなコマンドで自動生成できる。
```sh
bin/rails g graphql:object User
```

もしくは、以下のように手動で作成することも可能。
```sh
bin/rails g graphql:object User id:ID! name:String! email:String
```

- ID: GraphQLでのIDの型(String)
- 末尾 ! あり: null不許可
- 末尾 ! なし: null許可