class VotesController < ApplicationController

  def create
    
    #@vote = current_user.votes.create(vote_params)

    @vote = current_user.votes.where(link_id: vote_params[:link_id]).first #allows changing votes
    @vote ||= current_user.votes.create(vote_params)
    @vote.update_attributes(up: vote_params[:up])
    
    redirect_to :back
    
    
  end
  
  private
  def vote_params
    params.require(:vote).permit(:up, :user_id, :link_id)
  end

end
