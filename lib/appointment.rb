class Appointment
  # attr_accessor :date
  # attr_accessor :doctor
  # attr_accessor :patient
  attr_accessor :date, :doctor, :patient
  @@all = []
  
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor= doctor
    @date = date
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end