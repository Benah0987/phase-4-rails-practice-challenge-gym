class ClientController < ApplicationController
  def index
  end

  def show
    client = Client.find_by(id: params[:id])
    if client
      total_amount = client.memberships.sum(:charge)
      render json: { client: client, total_membership_amount: total_amount }
    else
      render json: { error: 'Client not found' }, status: :not_found
    end
  end
end
