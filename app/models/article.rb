class Article < ApplicationRecord
#   validate :is_valid_name

#   def is_valid_name
#     if self.name == "ankita"
#       self.errors.add(:name, "This person is evil")
#     end
#   end

# validate :is_valid_user

#   def is_valid_user
#     if self.user == "adhikari"
#     self.errors.add(:user, "This user is already exist")

#    end
#  end
end

# include GoodnessValidator
#   validate do |article|
#     validate(article)
#   end

# class GoodnessValidator
#   def initialize(record)
#     @record = record 
#   end

#   def validate
#     if @record.name == "ankita"
#       @record.errors.add(:name, "This person is evil")
#     end
#   end
# end




  #   validates :name, uniqueness: true, on: :account_setup
  #   validates :user, numericality: true, on: :account_setup
  # end
  


#   validates :name, presence: { strict: true }
#  #when we want to raise the exception..................it is an syntax........
#     validates :name, presence: true, uniqueness: true, strict: TokenGenerationException

# #conditional validation.........................................
#   validates :name, presence: true, if: :name_same?

#   def name_same?
#     the_name == "ankita"
#   end
# end

#error[:base]
# validate do |article|
#   errors.add :base, :invalid, message: "This person is invalid because ..."
# end


# validates :name, presence: true, length: { minimum: 3 }
# # it will be possible to update email with a duplicated value
# validates :name, uniqueness: true, on: :create

# # it will be possible to create the record with a non-numerical age
# validates :user, numericality: true, on: :update

# # the default (validates on both create and update)
# validates :name, presence: true
# end
  # validates :name,
  #     uniqueness: {
  #       # object = person object being validated
  #       # data = { model: "Person", attribute: "Username", value: <username> }
  #       message: ->(object, data) do
  #         "Hey #{object.name}, #{data[:value]} is already taken."
  #       end
  #     }
  #   end
  #validates_with GoodnessValidator,on: :create
  
    # validates :name, presence: true, acceptance: true
    # validates :user, presence: true, length: { minimum: 10 }
    # validates :name, acceptance: { message: 'must be abided' }
    # validates :user, acceptance: { message: 'must be abided' }
    # validates :name, acceptance: { accept: 'yes' }
    # validates :user, acceptance: { accept: ['TRUE', 'accepted'] }
    # validates :name, length: confirmation: true
    # validates :user, confirmation: true
    # validates :name, confirmation: { case_sensitive: false }
    # validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
    # validates :name, length: { in: 6..20 }
    # validates :user, length: { is: 8 }
    # validates :name, numericality: true
    # validates :user, numericality: { only_integer: true }

#   # Value _must_ be true or false
# validates :name, inclusion: [true, false]#name is not included
# # Value _must not_ be nil, aka true or false
# validates :user, exclusion: [nil]

#validates :name, uniqueness: true
# validates :name, uniqueness: { message: "should happen once per year" }
# validates :name, uniqueness: { case_sensitive: false }#........already taken
# validates_each :name, :user do |record, attr, value|
#   record.errors.add(attr, 'must start with upper case') if /\A[[:lower:]]/.match?(value)
# validates :size, inclusion: { in: %w(small medium large),
#     message: "%{value} is not a valid size" }, allow_nil: true

# validates :name, presence: { message: "must be given please" }
# validates :user, numericality: { message: "%{value} seems wrong" }

# end


#call back........................................................

# validates :name, :user, presence: true

#   before_validation :ensure_login_has_a_value

#   private
#     def ensure_login_has_a_value
#       if name.blank?
#         self.name = user unless user.blank?
#       end
#     end

# validates :name, :user, presence: true
#   before_create do
#   self.name = name.capitalize if name.blank?
#   end

 # before_create ->(article) { article.name = article.login.capitalize if article.name.blank? }

#  before_create Addname
# end

# class Addname
#   def self.before_create(record)
#     if record.name.blank?
#       record.name = record.user.capitalize
#     end
#   end
#   # def addsurname 
#   #   puts "adhikari"
#   # end

# end


# after_create_commit :log_user_saved_to_db
# after_update_commit :log_user_saved_to_db

# private
#   def log_user_saved_to_db
#     puts 'User was saved to database'
#   end
# end


# end
