class Patient
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(doctor, date)
    Appointment.new
  end
end