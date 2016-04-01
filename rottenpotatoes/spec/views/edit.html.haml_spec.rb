#- spec/movies/edit.html.haml_spec.rb
require 'spec_helper'

describe "movies/edit" do
  
  before :each do
    assign :movie, stub_model(Movie, title: 'Alien')
  end
 
  describe "render #edit.html.haml" do
    it "renders the edit template" do
      render
      
      expect(view).to render_template(:edit)
      expect(view).to render_template("edit")
    end
    
    it "shows a specific message" do
      render
      
      rendered.should contain "Edit Existing Movie"
    end
    
    it "shows a specific title" do
      render
      
      rendered.should have_selector "input", value: "Alien"
    end
  end

end