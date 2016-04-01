#- spec/movies/find.html.haml_spec.rb
require 'spec_helper'

describe "movies/find" do
  
  before :each do
    assign :movies, [
        stub_model(Movie, :director => 'George Lucas'),
        stub_model(Movie, :director => '')
      ]
  end
 
  describe "render #find.html.haml" do
    it "renders the find template" do
      render
      
      expect(view).to render_template(:similar)
      expect(view).to render_template("similar")
    end
    
    it "shows a specific message" do
      render
      
      response.should contain "All Movies With The Same Director"
    end
    
    it "shows the specific director" do
      render
      
      response.should contain "George Lucas"
    end
  end

end