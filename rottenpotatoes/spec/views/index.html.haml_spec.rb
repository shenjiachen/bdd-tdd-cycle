#- spec/movies/index.html.haml_spec.rb
require 'spec_helper'

describe "movies/index" do
  
  before :each do
  	assign :movies,  [
        stub_model(Movie, title: 'Star Wars', rating: 'PG',  director: 'George Lucas', release_date: '1977-05-25'),
        stub_model(Movie, title: 'Alien', rating: 'R', director: '', release_date: '1979-05-25')
      ]
    assign :all_ratings, %w(G PG PG-13 NC-17 R)
    assign :selected_ratings, {}
  end
 
  describe "render #index.html.haml" do
    it "renders the index template" do
      render
      
      expect(view).to render_template(:movies)
      expect(view).to render_template("movies")
    end
    
    it "shows the 'All Movies' message" do
      render
      
      rendered.should contain "All Movies"
    end
    
    it "shows a specific title" do
      render
      
      rendered.should contain 'Star Wars'
    end
  end

end