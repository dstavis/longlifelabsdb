class Tag < ActiveRecord::Base
  has_and_belongs_to_many :papers
  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false

  validates :name, :format => { with: /\A[^A-Z]+\z/,
    message: "Only lowercase letters allowed" }
end
