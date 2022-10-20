require 'rails_helper'

RSpec.describe "boards/new", type: :view do
  before(:each) do
    assign(:board, Board.new(
      title: "MyString",
      desctiption: "MyText"
    ))
  end

  it "renders new board form" do
    render

    assert_select "form[action=?][method=?]", boards_path, "post" do

      assert_select "input[name=?]", "board[title]"

      assert_select "textarea[name=?]", "board[desctiption]"
    end
  end
end
