class CommentsController < ApplicationController
    def create
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.create(comment_params)
        
        respond_to do |format|
            format.html { redirect_to tweet_path(@tweet) }
            format.js 
        end
    end

    def destroy
        @tweet = Tweet.find(params[:tweet_id])
        @comment = @tweet.comments.find(params[:id])
        @comment.destroy
        redirect_to tweet_path(@tweet), status: 303
        
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body)
    end         
end

