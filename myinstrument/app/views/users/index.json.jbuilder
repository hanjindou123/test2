json.array!(@users) do |user|
  json.extract! user, :id, :user_loginname, :user_password, :user_relatecount, :user_email, :user_realname, :user_address, :user_phonenumber, :user_payable
  json.url user_url(user, format: :json)
end
