FactoryBot.define do
  factory :content do
    grade_id {2}
    subject_id {2}
    category {"カテゴリー"}
    question {"問題"}
    answer {"答え"}
    explanation {"解説"}
    release_id {1}
    association :user
  end
end
