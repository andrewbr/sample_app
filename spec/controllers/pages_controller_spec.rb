require 'spec_helper'

describe PagesController do
  #render views in page controller setup =
  render_views
  
  # is the route and page there?
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    #tests title correctness, agains get and against error
    it "should have the right title" do
        get 'home'
        response.should have_selector("title",
                                      :content => "Home")
    end
    # REGULAR EXPRESSION RUBULAR . COM - testung for blanks
    it "should have NO blanks in body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                                    :content => "About")
    end  
  end
  

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => "Contact")
    end
  end

end
