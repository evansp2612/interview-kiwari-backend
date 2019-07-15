class ApplicationController < ActionController::API
  def index
    render json: {code: 200, msg: "Success", data: {name: "Belanja API Demo", version: "1.0.0"}}, status: :ok
  end
end
