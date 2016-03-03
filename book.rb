class Book
  attr_reader :id,:title,:isbn
  def initialize(id,title,isbn)
    @id=id
    @title=title
    @isbn=isbn
  end
end
