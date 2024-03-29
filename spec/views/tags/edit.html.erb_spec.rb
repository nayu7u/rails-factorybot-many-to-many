# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tags/edit', type: :view do
  before(:each) do
    @tag = assign(:tag, Tag.create!(
                          name: 'MyString'
                        ))
  end

  it 'renders the edit tag form' do
    render

    assert_select 'form[action=?][method=?]', tag_path(@tag), 'post' do
      assert_select 'input[name=?]', 'tag[name]'
    end
  end
end
