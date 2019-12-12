class SecretsController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: [:index]

  def show
    # redirect to /login if not logged in
    # should show secret if logged in

  end

end
