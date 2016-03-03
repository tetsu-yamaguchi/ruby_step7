require "date"
class Shelf
  @book
  def is_exist_book?(id)
    @book.each do |a|
      if a.id==id then
         return true
       end
     end
     false
  end
  def rental_book (bookid,memberid)
    if !is_exist_book?(bookid)
      puts ("指定の図書IDの図書は存在しないか貸し出されているのであった")
    else
      n=nil
      @book.each do |a|
        if a.id==bookid then
          n=a
         end
       end
       @book.delete(n)
       ren=BookRental.new(memberid,bookid,DateTime.now,DateTime.now+14,nil)
       return n,ren
    end
  end
  def return_book (book,book_rental)
    @book << book
    book_rental.return_date=DateTime.now
    return book_rental
  end
  def initialize(book=[])
    @book=book
  end
end
