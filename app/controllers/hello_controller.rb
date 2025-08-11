# frozen_string_literal: true

class HelloController < ApplicationController
  GREETING = "Hello World - v5.0!"

  def index
    @message = GREETING
  end
end


