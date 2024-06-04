class ResultsController < ApplicationController
  def square
    @user_input = params[:user_input]
    @square = @user_input.to_f ** 2
    render({template:'results/square_results'})
  end
  def square_root
    @user_input = params[:user_input]
    @square_root = @user_input.to_f ** 0.5
    render({template:'results/square_root_results'})
  end
  def payment
    months = params[:user_years].to_i * 12
    apr = (params[:user_apr].to_f / 100) / 12
    principal = params[:user_principal].to_f

    payment = (apr * principal)/(1 - (1 + apr) ** -months)

    @principal_string = principal.to_fs(:currency)
    @apr_string = apr.to_fs(:percentage, {:precision => 4})
    @payment_string = payment.to_fs(:currency)
    render({template:'results/payment_results'})
  end
  def random
    unless params[:user_max] == ''
      max = params[:user_max].to_f
    else
      max = 100
    end
    min = params[:user_min].to_f
    @random = rand(min..max)
    render({template:'results/random_results'})
  end
end
