class BooksController < ApplicationController
  def index
    # Active Record query methods are ACTUALLY
    # class methods, that you can chain up together
    # Ex: Book.includes(:author).where().order()

    # Book belongs_to author
    @books = Book.includes(:author)

    # Book belongs_to author
    # Author belongs_to company
    # @books = Book.all.includes(author: :company)
  
    # Book belongs_to author
    # Author belongs_to company
    # Company has_many employees
    # @books = Book.all.includes(author: {company: :employees})
  end
end