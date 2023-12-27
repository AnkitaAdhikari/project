class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  def self.ransackable_attributes(auth_object = nil)
    # ["created_at", "id", "id_value", "managed_resource_id", "role", "state", "updated_at"]
    authorizable_ransackable_attributes
end
def self.ransackable_associations(auth_object = nil)
    authorizable_ransackable_associations
end
end



