# SwiftUIBox

SwiftUI の動きを 1 テーマ 1 アプリで確かめるための、46 本の最小サンプル集（2022〜2023）。
各フォルダがそのまま Xcode プロジェクトで、見るべきコードはほぼ `ContentView.swift` の 1 ファイルだけ。
書籍『iPhoneアプリ開発集中講座』とオンラインスクール CodeCandy の教材を書くときの検証用に作ったもの。

## 入っているもの

| テーマ | サンプル |
|---|---|
| 画面遷移 | NavigationView, NavitationViewByButton, NavigationStackApp, NavigationStackCaseA〜E, NavigationStackYesNoApp, MultipleNavigationLink, TabViewSample, TabviewApp |
| リスト・繰り返し | List, ListArrayApp, ForEach, ScrollViewSimple, ScrollViewMultiple, ScrollViewChild, ScroolViewLazyVStack, ScrollImage |
| 入力・フォーム | TextField, TextEditor, FormApp, Picker, ButtonSelection, TapApp, SwithCircle, Alert |
| 状態と計算 | CounterApp, IntAndDoubleApp, MinAndMaxApp, OperatorApp, PrimeNumberApp, DictionaryApp |
| 小さなアプリ | GreetingApp, QuizApp, JuiceMachineApp, IdeaMemoApp, PayMemoApp, SampleChatsApp |
| データ・非同期 | FileManager, TaskApp, NetworkCheck |
| メディア・描画 | VideoPlayer, ChartsApp, FlushBorderApp |

## 使い方

1. 見たいフォルダの `.xcodeproj` を Xcode で開く
2. iPhone シミュレータで ▶ 実行
3. `ContentView.swift` を書き換えて動きを確かめる

## 関連

- [SwiftBox](https://github.com/mustacheyork/SwiftBox) — Swift 文法の Playground 集
- [DragAndDropOrder](https://github.com/mustacheyork/DragAndDropOrder) — onDrag / onDrop で並び替え
