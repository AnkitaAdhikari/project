class ApplicationController < ActionController::Base
    def protect_from_forgery(options = {})
    self.forgery_protection_strategy = protection_method_class(options[:with] || :null_session)
    self.request_forgery_protection_token ||= :authenticity_token
    prepend_before_action :verify_authenticity_token, options
  end
end
