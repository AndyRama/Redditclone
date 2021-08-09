class VoteController < Applicationcontroller
  def create
    vote = Vote.new( vote_params )
    vote.user_id = current_user_id
  end

  existing_vote = Vote.where(user_id: current_user_id, post_id: params[:vote] [:post_id]
  
  respond_to do |format|
    format.js {
      if existing_vote.size > 0
        #destroy existing vote
        existing_vote.first.destroy
      else
        #save a new vote
        if vote.save
          @success = true
        else
          @success = false
        end

        @post = Post.find(post_id)
        @total_upvotes = @post.upvotes
        @total_downvotes = @post.downvotes
      end
      
      render "vote/create"
    
    }
  end

  private 
  
  def vote_params
    params.require(:vote).permit(:upvote, :post_id)
  end
end