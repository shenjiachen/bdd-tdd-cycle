require 'spec_helper'

describe Movie do 
  
  before :each do
    @movie = Movie.create title: "Matrix", rating: "PG", director: "Whatchowzki's brothers", release_date: '1999-05-25'
  end
  
  describe "#new" do
    it "returns a new movie object" do
      @movie.should be_an_instance_of Movie
    end
  end
  
  describe "#title" do
    it "returns the correct title" do
      @movie.title.should eql "Matrix"
    end
    
    it "returns a title name as a string" do
      @movie.title.should be_a_kind_of String
    end
  end
  
  describe "#rating" do
    it "returns the correct rating" do
      @movie.rating.should eql "PG"
    end
    
    it "returns a rating as a string" do
      @movie.rating.should be_a_kind_of String
    end
  end
  
  describe "#director" do
    it "returns the correct director" do
      @movie.director.should eql "Whatchowzki's brothers"
    end
    
    it "returns a director as a string" do
      @movie.director.should be_a_kind_of String
    end
  end
end