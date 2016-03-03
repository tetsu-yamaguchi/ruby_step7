class Member
    attr_reader :id,:name
  def initialize(id, name, gender)
    @id=id
    @name=name
    @gender = gender
  end
end
