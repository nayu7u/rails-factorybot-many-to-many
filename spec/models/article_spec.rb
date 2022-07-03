require 'rails_helper'

RSpec.describe Article, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  it "FactoryBotでも多対多のモデルを作成できる" do
    article = create(:article, :with_tags)

    expect(article.tags.size).to eq 1
    expect(article.tags.first.name).to eq "for test"
  end
end
