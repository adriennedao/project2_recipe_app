class User <ActiveRecord::Base
  has_many :recipes
  has_many :ingredients
  validates :name, uniqueness: :true, presence: :true
end
