class Issue < ApplicationRecord
  has_attached_file :image, :styles => { :big => "600x400", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  enum status: {open: 0, pending: 1, resolved: 2}

  validates :title, presence: true, length: {in: 4..20}
  validates :description, presence: true, length: {in: 10..500}
  validates :latitude, presence: true
  validates :longitude, presence: true
end
