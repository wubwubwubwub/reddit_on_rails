class VotesController < ApplicationController

  def create
    @vote = current_user.votes.create(vote_params)
    redirect_to :back
  
  end
  
  private
  def vote_params
    params.require(:vote).permit(:up, :user_id, :link_id)
  end

end
