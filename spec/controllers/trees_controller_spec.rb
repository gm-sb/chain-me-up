require 'spec_helper'

describe TreesController do
  render_views

  let(:tree) {Tree.create(:title => "Many galaxies away...", :content => "Star wars began as a story")}

  before(:each) do 
    Tree.destroy_all
  end

  describe 'GET new' do
    it 'renders the page to create a tree' do
      get :new
      expect(response).to render_template('new')
    end
  end

  describe 'POST' do
    it 'creates a new tree' do
      post :create, {:tree => {:title => "An example title", :content => "Example content"}}
      expect(Tree.last.title).to eq("An example title")
      expect(Tree.last.content).to eq("Example content")     
    end
  end

  describe 'get index' do 
      
    before(:each)  do 
      child = tree.child_trees.build(:content => "And it continued as a legend")
      child_2 = tree.child_trees.build(:content => "And it continued as a not legend")
      child.save
      child_2.save
    end 

    it 'displays trees and their branches' do 

      get :index 

      expect(response).to render_template('index')

      expect(response.body).to include("And it continued as a not legend")
    end
  end
end
