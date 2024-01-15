class Question < ApplicationRecord
  has_many :answers, dependent: :destroy #ほかのモデルとの間に1:多のかかわりを持つ
  
  validates :title, presence: true
  validates :name, presence: true
  validates :content, presence: true, length: { minimum: 5 }
end
