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
  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self}
  end

  def patients
    appointments.map{|appointment| appointment.patient}
  end
end