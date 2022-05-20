class Ty
  include Xyz
  def method
   abc = Abc.new
    abc.cl
  end
end

class Abc
    def m1
        puts "New maja"
    end
end

object = Abc::m1