class Answer < ApplicationRecord
  belongs_to :user
  has_many :answer_details, dependent: :destroy
  accepts_nested_attributes_for :answer_details
end
