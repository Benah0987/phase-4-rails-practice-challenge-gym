class MembershipsController < ApplicationController
  def create
    # find first
    # check if client exists
    client = Client.find(params[:client_id])
    if client.memberships.exists?(gym_id: params[:gym_id])
      render json: { error: 'Client already has a membership with this gym' }, status: :unprocessable_entity
    else

      # if doesnt exist 
      membership = Membership.new(gym_id: params[:gym_id], client_id: params[:client_id], charge: params[:charge])
      if membership.save
        render json: membership, status: :created
      else
        render json: { error: membership.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end
end