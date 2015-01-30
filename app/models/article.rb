class Article < ActiveRecord::Base
  belongs_to :catagory
  has_many :links, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
