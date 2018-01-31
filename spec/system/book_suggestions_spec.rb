require 'rails_helper'

RSpec.describe 'UserAuthentication', type: :system do
  let!(:books) { create_list(:book, 20) }
  before { visit root_path }

  it do
    books.each do |book|
      expect(page).to have_content book.title
    end
  end

  it do
    books.each do |book|
      expect(page).to have_content book.author
    end
  end
end
