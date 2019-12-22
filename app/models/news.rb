class News < ApplicationRecord

  validates :name,  presence: true, length: { maximum: 30 }
  validates :content,  presence: true, length: { maximum: 500 }

end
