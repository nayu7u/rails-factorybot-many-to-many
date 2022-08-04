# FactoryBotで多対多を作るだけ。

- spec/factories/articles.rb にやりたかったことがある
- traitで書いている
- 今あるのはtagを新しく作るパターンのみ
- `after(:build)`の中でTag.find_byでseedで作成したTagをつけるtraitを作成することも可能
- モデルの関係・・・Article <---> Tagging <---> Tag
