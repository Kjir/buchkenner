require 'rails_helper'

RSpec.describe 'books/index', type: :view do
  let(:user) { create(:user) }
  let(:books) { create_list(:book, 15)}
  before(:each) do
    assign(:books, books)
  end

  it 'renders a list of books' do
    render
    books.each do |book| 
      assert_select 'h4.title', text: book.title
      assert_select 'h6.subtitle', text: "by #{book.author}"
    end
  end
end
