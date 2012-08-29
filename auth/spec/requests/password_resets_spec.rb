require 'spec_helper'

describe "PasswordResets" do
  describe "GET /password_resets" do
    it "emails the user when requesting password reset" do
      user = FactoryGirl.create(:user)
      visit login_path
      click_link "password"
      fill_in "Email", with: user.email
      click_button "Reset Password"
      current_path.should eq(root_path)
      page.should have_content("Email sent")
      last_email.to.should include(user.email)
    end
  end
end
