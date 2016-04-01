#- spec/movies/new.html.haml_spec.rb
require 'spec_helper'

describe "movies/new" do
 
  describe "render #new.html.haml" do
    it "renders the new template" do
      render
      
      expect(view).to render_template(:new)
      expect(view).to render_template("new")
    end
    
    it "shows a value in new template" do
      render
      
      rendered.should contain "Create New Movie"
    end
  end

end