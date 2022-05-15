FactoryBot.define do
  factory :user do
    nickname {"sato"}
    email {"1aaAA@gmail.com"}
    password {"abc123"}
    password_confirmation {password}
    family_name{"山田"}
    first_name{"太郎"}
    family_name_kana{"ヤマダ"}
    first_name_kana{"タロウ"}
    birth_day{"2000-01-01"}

  end
end