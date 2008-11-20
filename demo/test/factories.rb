Factory.define :user do |f|
  f.name { Forgery(:name).full_name }
  f.login { Forgery(:internet).user_name }
  f.email { Forgery(:internet).email_address }
  f.password { Forgery(:basic).text }
  f.password_confirmation { |u| u.password }
end
