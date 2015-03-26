class Mimo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  enum size: [ :small, :medium, :big ]

  belongs_to :user

  def show_size
    case size
    when "small"
      "Pequeño"
    when "medium"
      "Mediano"
    when "big"
      "Grande"
    end
  end
end
