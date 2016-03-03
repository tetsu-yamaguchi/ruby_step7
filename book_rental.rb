class BookRental
  attr_reader :memberid,:bookid,:rental_date,:rental_limit
  attr_accessor :return_date
  def initialize(memberid,bookid,rental_date,rental_limit,return_date)
    @memberid=memberid
    @bookid=bookid
    @rental_date=rental_date
    @rental_limit=rental_limit
    @return_date=return_date
  end
end
