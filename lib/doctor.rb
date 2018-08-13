class Doctor 
  attr_accessor :name
  attr_accessor :appointments
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
    
  end
  
  # def appointments
  # end
end