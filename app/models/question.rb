class Question < ActiveRecord::Base

  belongs_to :day
  has_many :comments

  validates :question, presence: true
  validates :user, presence: true
end
