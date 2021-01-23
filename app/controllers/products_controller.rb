class ProductsController < ApplicationController
  before_action :search_product, only: [:index, :search]
  def index
    @products = Product.all # 全商品の情報を取得
  end

  def search
    # binding.pry
    @results = @p.result.includes(:category)  # 検索条件にマッチした商品の情報を取得
  end

  private
  def search_product
  @p = Product.ransack(params[:p]) # 検索オブジェクトを生成
  end 

end
