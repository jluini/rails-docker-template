class ApplicationController < ActionController::Base
  def model_class
    controller_name.classify.constantize
  rescue NameError
    nil
  end
end
