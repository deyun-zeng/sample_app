require 'spec_helper'

describe "Static pages" do

  let(:help_title) {'Help'}
  let(:about_title) {'About Us'}
  let(:contact_title) {'Contact Us'}
  subject { page}
  describe "Home page" do
    before {visit root_path}
    it {should have_content('Sample App')}
    it {should have_title(full_title(''))}
    it {should_not have_title('|Home')}
    
  end

  describe "Help page" do
    before{ visit help_path}
    it{ should have_content("#{help_title}")}
    it{ should have_title(full_title("#{help_title}"))}
  end

  describe "About page" do
    before { visit about_path}
    it {should have_content("#{about_title}")}
    it {should have_title(full_title("#{about_title}"))}
  end

  describe "Contact Us" do
    before { visit contact_path}
    it {should have_content("#{contact_title}")}
    it {should have_title(full_title("#{contact_title}"))}
  end
end
