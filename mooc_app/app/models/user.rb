class User < ActiveRecord::Base
    validate :birth_date_cannot_be_in_the_future
    def birth_date_cannot_be_in_the_future
        errors.add(:birth_date, "can't be in the future") if
          !birth_date.blank? and birth_date > Date.today
    end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  has_many :courses
  has_many :comments
  mount_uploader :image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
