require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "unique user" do
  user1 = User.new( :userid => "test",
                              :password => "testing",
                              :fullname => "Ima Test",
                              :email => "test@myhost.com")
        assert user1.save
                              
    user2 = User.new(:userid => "test",
                             :password => "testing",
                             :fullname => "Ima Test Too",
                             :email => "test@myhost.com")
        assert !user2.save
    end
end
