require 'spec_helper'

describe "microposts/index" do
  before(:each) do
    assign(:microposts, [
      stub_model(Micropost,
        :content => "Content",
        :user_id => "User",
        :integer => "Integer"
      ),
      stub_model(Micropost,
        :content => "Content",
        :user_id => "User",
        :integer => "Integer"
      )
    ])
  end

  it "renders a list of microposts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
  end
end
