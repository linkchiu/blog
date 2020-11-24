class CommentsController < ApplicationController
  http_basic_authenticate_with name: "bb", password: "bb", only: :destroy
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_parms)
    redirect_to article_path(@article)

  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private def comment_parms
    params.require(:comment).permit(:commenter,:body)
  end

end
