module AuthHelper
  def http_login
    user = 'angeleah'
    pw = 'Cl13nt5'
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end  
end
