class Note < ActiveRecord::Base

  belongs_to :user
  validates_presence_of :title
  paginates_per 2

  def self.search(element)
   where('lower(title) like :element OR lower(content) like :element', :element => "%#{element.downcase}%")
  end

end
