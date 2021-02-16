class Question < ApplicationRecord
  enum choice: { yes: 0, no: 1 }

  belongs_to :user
end
