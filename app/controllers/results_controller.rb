class ResultsController < ApplicationController
  def square
    render({template:'results/square_results'})
  end
  def square_root
    render({template:'results/square_root_results'})
  end
  def payment
    render({template:'results/payment_results'})
  end
  def random
    render({template:'results/random_results'})
  end
end
