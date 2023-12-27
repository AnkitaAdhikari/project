module GoodnessValidator
    extend ActiveSupport::Concern
    def validate(record)
      if record.name == "ankita"
        record.errors.add(:name, "This person is evil")
      end
    end
end

