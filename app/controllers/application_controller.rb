class ApplicationController < ActionController::Base

  def hello
    render html: "hey mom!"
  end
end
