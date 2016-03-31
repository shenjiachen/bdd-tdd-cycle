#- spec/movies/show.html.haml_spec.rb
require 'spec_helper'

describe "movies/show" do
  
  before :each do
    assign :movie, stub_model(Movie, title: 'Star Wars', release_date: '1977-05-25')
  end
 
  describe "render #show.html.haml" do
    it "renders the show template" do
      render
      
      expect(view).to render_template(:show)
      expect(view).to render_template("show")
    end
    
    it "shows a specific title" do
      render
      
      rendered.should contain "Details about Star Wars"
    end
  end

end