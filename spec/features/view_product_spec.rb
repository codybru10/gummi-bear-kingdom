require 'rails_helper'

describe "the delete a product process" do
  it "deletes a new product" do
    test_product = Product.create(:name => "Yummy Bears", :cost => 3, :origin => "Mexice", :img => "https://images.vat19.com/covers/large/worlds-largest-gummy-bear-bubblegum.jpg")
    visit products_path
    click_link "Yummy Bears"
    expect(page).to have_content 'Yummy Bears'
  end
end
