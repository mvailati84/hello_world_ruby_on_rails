# frozen_string_literal: true

class HelloController < ApplicationController
  GREETING = "Hello World - v3.0!"

  def index
    @message = GREETING
  end
end


