require 'rails_helper'

RSpec.describe "boards/show", type: :view do
  before(:each) do
    assign(:board, Board.create!(
      title: "Title",
      desctiption: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
