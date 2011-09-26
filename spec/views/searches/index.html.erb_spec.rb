require 'spec_helper'

describe "searches/index.html.erb" do
  before(:each) do
    assign(:searches, [
      stub_model(Search),
      stub_model(Search)
    ])
  end

  it "renders a list of searches" do
    render
  end
end
