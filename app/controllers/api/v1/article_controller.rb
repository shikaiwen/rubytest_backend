
module Api
  module V1

    class ArticleController < ApplicationController

      protect_from_forgery with: :null_session

      before_action :set_article, only: [:update,:destroy]

      def index
        # articles = Article.order(created_at: :desc)
        # Article.all
        # articles = Article.find_by_cate(params['cate'])
        articles = Article.where(cate:params['cate'])
        render json:{success:true,data:articles}
      end

      def create
        # article = params.require(:article).permit(:title,:content)
        article = Article.new(article_params)
        if article.save
          render json: {success:true,msg:'保存しました',data:article}
        else
          render json: {success:true,msg:'エラー発生した'}
        end
      end

      def update
        if @article.update(article_params)
          render json: {success:true,msg:'更新完了しました',data:@article}
        else
          render json: {success:false,msg:'更新エラーになりました',data:@article}
        end
      end

      def destroy
        @article.destroy
        render json: {success:true,msg:'削除しました',data:@article}
      end

      def set_article
        @article = Article.find(params[:id])
      end

      def article_params
        params.permit(:title,:content,:no,:name,:price,:remarks,:cate)
      end
    end

  end
end
