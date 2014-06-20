class Comment < ActiveRecord::Base

  belongs_to :question

  validates :comment, presence: true
  validates :user, presence: true
end
