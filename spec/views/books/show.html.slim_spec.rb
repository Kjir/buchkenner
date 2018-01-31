require 'rails_helper'

RSpec.describe 'books/show', type: :view do
  let(:user) { create(:user) }
  let(:book) { create(:book) }
  before(:each) do
    @book = assign(:book, book)
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to include book.title
    expect(rendered).to include book.author
  end
end
