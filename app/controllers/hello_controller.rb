# frozen_string_literal: true

class HelloController < ActionController::Base
  GREETING = "Hello World !"

  def index
    @message = GREETING
  end
end


