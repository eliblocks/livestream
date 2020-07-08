class Api::PlaysController < ApiController
  def create
    current_user.plays.create

    render json: { balance: current_user.balance / 60 }
  end
end
