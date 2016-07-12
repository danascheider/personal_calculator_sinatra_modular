class AgeCalculator
  attr_reader :birthdate
  private     :birthdate

  def initialize(birthdate)
    @birthdate = DateTime.parse(birthdate)
  end

  def get_age!
    today = Date.today
    age   = today.year - birthdate.year

    age -= 1 if birthdate.yday > today.yday

    age
  end
end