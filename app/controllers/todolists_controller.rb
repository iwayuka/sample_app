class TodolistsController < ApplicationController
  def new
    # Viewへ渡すためにインスタンス変数の空のモデルオブジェクトを生成する。
    @list = List.new
  end

  #以下を追加
  def create
    # 1.データの新規作成するためのインスタンス作成
  list = List.new(list_params)
    # 2.データをデータベースに保存するためのsaveメソッド実行
  list.save
    # 3.トップ画面へ、リダイレクト
  redirect_to '/top'
  end

  def index
    @lists = List.all
  end

  private
   # ストロングパラメータ
  def list_params
     params.require(:list).permit(:title, :body)
  end

end
