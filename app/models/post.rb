class Post < ActiveRecord::Base
  attr_accessible :description, :title

  validates :title, :presence => true
  validates :description, :presence => true


  def self.create_new_entry(parameters)
    a = Post.new(:title => parameters['title'],:description => parameters['description'])
    a.save
    return a
  end
end
