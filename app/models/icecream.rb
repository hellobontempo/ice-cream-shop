class IceCream < ActiveRecord::Base
  belongs_to :user
  validates :flavor, presence: true 
  validates :rating, :rating_between_1_and_5



  def rating_between_1_and_5
    if rating < 1 || rating > 5
      errors.add(:rating, "Must be between 1 and 5")
    end
  end
end  