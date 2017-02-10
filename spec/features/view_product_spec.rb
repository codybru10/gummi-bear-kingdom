require 'rails_helper'

describe "the view a product process" do
  it "view a product" do
    admin = FactoryGirl.create(:admin)
    login_as(admin, :scope => :admin)
    test_product = Product.create(:name => "Yummy Bears", :cost => 3, :origin => "Mexice", :img => "https://images.vat19.com/covers/large/worlds-largest-gummy-bear-bubblegum.jpg")
    visit products_path
    click_link "Yummy Bears"
    expect(page).to have_content 'Yummy Bears'
  end
end
