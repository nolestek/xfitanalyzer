# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#Xfitanalyzer::Application.config.secret_key_base = '6bf0697fd1009c622f0deb0a7b3fe1621a1698473cfade3ce5ad3b0133d4bf3aabadd713747c0f0cd12d59376bd0230088e4155846cc157696447edad97cfc9b'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Xfitanalyzer::Application.config.secret_key_base = secure_token