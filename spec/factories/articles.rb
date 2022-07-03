FactoryBot.define do
  factory :article do
    title { "MyString" }
    text { "MyText" }

    trait :with_tags do
      after(:build) do |article|
        tag = create(:tag, name: "for test")
        article.taggings << build(:tagging, article: article, tag: tag)
      end
    end
  end
end
