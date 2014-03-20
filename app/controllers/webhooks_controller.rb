class WebhooksController < ApplicationController
  include XmlrpcController
  skip_before_filter :verify_authenticity_token, only: [:rpc] 
  before_filter :ifttt_defaults, only: [:rpc]

end
