class ApplicationController < ActionController::Base
  around_action :switch_locale

  # Change the language application and use the language setted by default from the browser
  # You can check the changes opening the browser console-network and select Doc/Document and then,
  # serch the reference "Accept-Language" and check that is the same as the browser
  def switch_locale(&action)
    I18n.with_locale(locale_from_header, &action) 
  end

  private

  def locale_from_header
    request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  end
end