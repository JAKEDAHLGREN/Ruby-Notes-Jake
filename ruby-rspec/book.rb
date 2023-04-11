class Book
  attr_accessor :title, :author, :page
  def initialize 
    @title = title
    @author = author
    @page = 1
  end

  def read pages_read
    @page += pages_read
  end
end