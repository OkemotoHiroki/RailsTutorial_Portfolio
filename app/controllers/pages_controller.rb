class PagesController < ApplicationController
  def home
    # カテゴリを追加するときは、この配列に1ブロック足す
    # 成果物を追加するときは、該当カテゴリの projects に1件ハッシュを足す
    # description に各アプリの概要を書く（空文字なら非表示）
    @categories = [
      {
        name: "Ruby on Railsで作成したアプリ",
        projects: [
          {
            name: "給料計算機・占いアプリ",
            description: "時給と労働時間を入力すると、税金を引いた手取りを計算する。\n誕生月を入力すると順位とラッキーカラーを出力。\nRubyの基礎を学習するために作成。",
            site: "https://railstutorial-calc-uranai.onrender.com",
            github: "https://github.com/OkemotoHiroki/RailsTutorial_Calc_Uranai"
          },
          {
            name: "一言日記アプリ",
            description: "１日ごとに一言日記を登録することができる。\ngoogleと同期することでカレンダーに日記を同期することができる。\nRuby on Railsの基礎を学習するために作成。",
            site: "https://railstutorial-diary.onrender.com",
            github: "https://github.com/OkemotoHiroki/RailsTutorial_Diary"
          },
          {
            name: "タスク管理アプリ",
            description: "ユーザー認証付きタスク管理ツール。\n写真プレビュー機能とシングルサインオン機能を実装。\nRailsの基礎とPostgreSQLの学習のために作成。",
            site: "https://railstutorial-taskmanager.onrender.com",
            github: "https://github.com/OkemotoHiroki/RailsTutorial_TaskManager"
          },
          {
            name: "マイクロポストアプリ",
            description: "チュートリアルサイトRuby on Rails Tutorialを実施し、作成。\n後述のモデレーションAPIで投稿機能にスパム判定と怒り判定を追加し、検出された場合他のユーザーに表示されないように機能追加した。",
            site: "https://micropost-rails.onrender.com",
            github: "https://github.com/OkemotoHiroki/Tutorial-MicropostApp"
          }
        ]
      },
      {
        name: "Pythonで作成したアプリ",
        projects: [
          {
            name: "スパム判定・怒り判定API（マイクロポストアプリで使用）",
            description: "スパム判定と怒り判定をするAPI。\nスパム判定はScikit-learnを使い学習モデルを作成。\n怒り判定はLangChainを使いGeminiを呼び出し文言の怒り判定をする。",
            site: "https://micropost-fastapi.onrender.com/docs",
            github: "https://github.com/OkemotoHiroki/Tutorial_FastAPI"
          }
      ]
      }
    ]
  end
end
