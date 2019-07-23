class FriendshipsController < ApplicationController
  
  def destroy
    # Grab the friedship based on the id that's passed in
    # Adding .first returns the friend object, otherwise .where method returns the friendship association
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "Friend was successfully removed"
    redirect_to my_friends_path
  end
  
end