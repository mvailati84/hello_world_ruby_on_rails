# frozen_string_literal: true

# Set a static secret key base for development and test to avoid credential setup
if Rails.env.development? || Rails.env.test?
  Rails.application.secret_key_base = ENV.fetch(
    "SECRET_KEY_BASE",
    "0f3f8f8d2b8e2e97a5f4e3c2d1b0a9f8e7d6c5b4a3f2e1d0c9b8a7f6e5d4c3b2"
  )
end


