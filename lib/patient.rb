class Patient
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def doctors
    Appointment.all.select{|appointment| appointment.patient == self}.map{|item| item.doctor}
  end
end