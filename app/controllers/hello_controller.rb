# frozen_string_literal: true

class HelloController < ActionController::Base
  GREETING = "Hello World - v2.0!"

  def index
    @message = GREETING
  end
end


