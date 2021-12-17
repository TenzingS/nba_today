class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find_by(id: params[:id])
        render json: comment
    end

    def create
        @post = Post.find(params[:id])
        comment = @post.comments.create!(comment_params)
        render json: comment, status: :created
        redirect_to @post
    end

    def destroy
        @post = Post.find(params[:id])
        comment = @post.comments.find(params[:id])
        comment.destroy
        head :no_content
    end

    private

    def comment_params
        params.permit(:body)
    end
end
