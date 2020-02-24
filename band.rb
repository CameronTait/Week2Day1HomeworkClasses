class Band
  attr_accessor :name, :members, :manager
  def initialize(name, members, manager)
    @name = name
    @members = members
    @manager = manager
  end


  def add_new_member(member_name)
    @members.push(member_name)
  end




  def check_member(member_name)
    return @members.find() do |member|
      member == member_name
    end
  end



end
