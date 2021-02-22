class Question < ApplicationRecord
  enum choice: { yes: 0, no: 1 }

  belongs_to :user
  has_many :answer_details, dependent: :destroy

  validates :choice, presence: true
  validates :text,   presence: true
end
