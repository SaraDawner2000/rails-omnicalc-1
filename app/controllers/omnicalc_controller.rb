class OmnicalcController < ApplicationController
  def square
    render({template:'omnicalc/square'})
  end
  def square_root
    render({template:'omnicalc/square_root'})
  end
  def payment
    render({template:'omnicalc/payment'})
  end
  def random
    render({template:'omnicalc/random'})
  end
end
