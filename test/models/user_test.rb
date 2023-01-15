require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup 
    @user = User.new(name: "yuha", email: "yuha@example.com",
    password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.name = " "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "   "
    assert_not @user.valid?
  end

  test "password should be present" do
    @user.password = " "
    assert_not @user.valid?
  end

  test "value of password should be match" do
    @user.password_confirmation = "aiueok"
    assert_not @user.valid?
  end

  test "value of money should be 0" do
    assert_match @user.money, 0
  end
end
