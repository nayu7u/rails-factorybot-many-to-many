# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'tags/new', type: :view do
  before(:each) do
    assign(:tag, Tag.new(
                   name: 'MyString'
                 ))
  end

  it 'renders new tag form' do
    render

    assert_select 'form[action=?][method=?]', tags_path, 'post' do
      assert_select 'input[name=?]', 'tag[name]'
    end
  end
end
