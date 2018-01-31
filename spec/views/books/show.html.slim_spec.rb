require 'rails_helper'

RSpec.describe 'books/show', type: :view do
  let(:user) { create(:user) }
  before(:each) do
    @book = assign(:book, Book.create!(
                            title: 'Title',
                            author: 'Author',
                            isbn: 'Isbn',
                            user: user
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Isbn/)
  end
end
