class List < ActiveRecord::Base
  has_many :steps, dependent: :delete_all
  validates :title, presence: true

end
