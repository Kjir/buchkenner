require 'rails_helper'

RSpec.describe 'UserAuthentication', type: :system do
  let(:user) { create(:user) }
  before { visit root_path }

  it { expect(page).to have_link 'Login' }
  it do
    click_link 'Login'
    expect(page).to have_current_path new_user_session_path
  end

  it 'logs in' do
    click_link 'Login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    sleep 10
    expect(page).to have_current_path root_path
    expect(page).to have_content user.email
  end
end
