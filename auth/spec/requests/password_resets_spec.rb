require 'spec_helper'

describe "PasswordResets" do
  describe "GET /password_resets" do
    it "emails the user when requesting password reset" do
      user = FactoryGirl.create(:user)
      visit login_path
      click_link "password"
      fill_in "Email", with: user.email
      click_button "Reset Password"
    end
  end
end
