require RAILS_ROOT + '/test/factories'

Bootstrapper.for :development do |b|
  5.times do
    Factory(:user)
  end

  Factory(:user, :login => "nate",
                 :name => "Cora Sutton",
                 :email => "nate@sevenwire.com",
                 :password => "lololol",
                 :password_confirmation => "lololol")
end

Bootstrapper.for :production do |b|
end

Bootstrapper.for :test do |b|
end

