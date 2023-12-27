module Uservalidator
   extend ActiveSupport::Concern 
   def validate(record)
    if record.user == "adhikari"
        record.errors.add(:user, "This user is already exist")
end


