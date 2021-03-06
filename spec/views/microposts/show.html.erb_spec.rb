require 'spec_helper'

describe "microposts/show" do
  before(:each) do
    @micropost = assign(:micropost, stub_model(Micropost,
      :content => "Content",
      :user_id => "User",
      :integer => "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    rendered.should match(/User/)
    rendered.should match(/Integer/)
  end
end
