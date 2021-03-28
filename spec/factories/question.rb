FactoryBot.define do
  factory :question do
    text { '脳筋あるある今から言うよ' }
    choice { 0 }
    user_id { 0 }
  end
end
