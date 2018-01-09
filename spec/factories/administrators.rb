FactoryGirl.define do
  factory :administrator do
    sequence(:email) { |n| "administrator#{n}@example.com" }
    family_name '管理者'
    given_name '太郎'
    family_name_kana 'カンリシャ'
    given_name_kana 'タロウ'
    password 'pw'
    start_date { Date.yesterday }
    end_date nil
    suspended false
  end
end
