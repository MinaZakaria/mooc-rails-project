
class Lecture < ActiveRecord::Base
  belongs_to :course
  acts_as_votable
  mount_uploader :attachment, AttachmentUploader
  has_many :comments, :dependent => :destroy
end
