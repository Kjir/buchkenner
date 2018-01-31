require 'rails_helper'

RSpec.describe 'books/index', type: :view do
  let(:user) { create(:user) }
  before(:each) do
    assign(:books, [
             Book.create!(
               title: 'Title',
               author: 'Author',
               isbn: 'Isbn',
               user: user
             ).tap do |book|
               book.class_eval do
                 def reviews_count
                   0
                 end
               end
             end,
             Book.create!(
               title: 'Title',
               author: 'Author',
               isbn: 'Isbn',
               user: user
             ).tap do |book|
               book.class_eval do
                 def reviews_count
                   0
                 end
               end
             end
           ])
  end

  it 'renders a list of books' do
    render
    assert_select 'h4.title', text: 'Title'.to_s, count: 2
    assert_select 'h6.subtitle', text: 'by Author'.to_s, count: 2
  end
end
