require 'rails_helper'

RSpec.describe "skills/new", type: :view do
  before(:each) do
    assign(:skill, Skill.new(
      :name => "MyString",
      :skill_type_id => 1
    ))
  end

  it "renders new skill form" do
    render

    assert_select "form[action=?][method=?]", skills_path, "post" do

      assert_select "input#skill_name[name=?]", "skill[name]"

      assert_select "input#skill_skill_type_id[name=?]", "skill[skill_type_id]"
    end
  end
end
