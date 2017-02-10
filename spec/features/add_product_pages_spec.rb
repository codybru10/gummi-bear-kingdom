require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link "Add Product"
    fill_in 'Name', :with => "Yummy Bears"
    fill_in 'Cost', :with => 3
    fill_in 'Origin', :with => "United States"
    click_on 'Create Product'
    expect(page).to have_content 'All Products'
  end
end
