class List < ActiveRecord::Base
  has_many :steps
  validates :title, presence: true
end
