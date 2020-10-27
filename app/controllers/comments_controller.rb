class CommentsController < ApplicationController

    def create
        @post = Post.find(params[:post_id])
        # finding post and getting comments on it, getting comments model and create a new comment on that post
        @comment = @post.comments.create(params[:comment]).permit(:name, :comment))
        redirect_to post_path(@post)
    end

    def destroy 
    end


end
