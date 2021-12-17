class PostsController < ApplicationController
    def index
        render json: Post.all
      end
    
      def create
        post = @current_user.posts.create!(post_params)
        render json: post, status: :created
      end

      def show
        post = Post.find_by(id: params[:id])
        if post
            render json: post
        else
            render json: {error: "Not Found"}, status: :not_found
        end
      end

      def update
        post = find_post
        if (post.user_id === @current_user.id)
          post.update(post_params)
          render json: post, status: :accepted
        else 
            render json: { error: "Can't edit post" }, status: :not_found
        end
       end

      def destroy
        post = find_post
        post.destroy
        head :no_content
       end
    end
    
      private

      def find_post
        Post.find(params[:id])
      end
    
      def post_params
        params.permit(:title, :body)
      end
end
