class Employee < ActiveRecord::Base
  belongs_to :store

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, in: 40..200

  validates_presence_of :store_id

  # before_create :create_password
  before_save :create_password

  private
    def create_password
      if password.nil?
        self.password = rand(36**8).to_s(36) #For before_create and before_save
        # self.update(password: rand(36**8).to_s(36)) #For after_create and before_save
      end
    end

end
