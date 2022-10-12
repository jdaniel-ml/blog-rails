class RelationshipsController < ApplicationController
  def create
    other_user = User.find(params[:user_id])
    @relation = Relationship.new(follower_id: current_user.id,
                                 follwed_id: other_user.id)
    @relation.save
    redirect_to user_path(other_user)
  end
end
