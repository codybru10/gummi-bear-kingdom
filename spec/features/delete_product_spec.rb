require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :admin)
    test_product = Product.create(:name => "Yummy Bears", :cost => 3, :origin => "Mexice", :img => "https://images.vat19.com/covers/large/worlds-largest-gummy-bear-bubblegum.jpg")
    visit product_path(test_product)
    click_link "Delete"
    expect(page).to have_content 'All Products'
  end
end
