require 'rails_helper'

describe "the edit a product process" do
  it "edits a new product" do
    test_product = Product.create(:name => "Yummy Bears", :cost => 3, :origin => "Mexice", :img => "https://images.vat19.com/covers/large/worlds-largest-gummy-bear-bubblegum.jpg")
    visit product_path(test_product)
    click_link "Edit"
    fill_in 'Name', :with => "Yummy Bears"
    fill_in 'Cost', :with => 3
    fill_in 'Origin', :with => "Mexico"
    click_on 'Update Product'
    expect(page).to have_content 'Yummy Bears'
  end
end
