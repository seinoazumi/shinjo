class Restaurant < ApplicationRecord
  has_many :comments

  def average_rate
    self.comments.average(:rate).round
  end

  with_options presence: true do
    validates :name
    validates :budget_d
    validates :budget_n
    validates :header, length: {maximum: 100}
    validates :description, length: {maximum: 2000}
  end

  enum budget_d: {
      default: 0,
      till_1000: 1,
      till_2000: 2,
      till_3000: 3,
      till_4000: 4,
      till_5000: 5,
      over_5000: 6
      },  _prefix: true
      
  enum budget_n: {
    default: 0,
    till_1000: 1,
    till_2000: 2,
    till_3000: 3,
    till_4000: 4,
    till_5000: 5,
    over_5000: 6
  },  _prefix: true
  
end
