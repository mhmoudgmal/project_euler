class Fixnum
  def prime?
    (2..Math.sqrt(self)).each do |i|
      if self % i == 0
        return false
      end
    end

    true
  end
end
