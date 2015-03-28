class Mimo < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "200x200>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  enum size: [ :small, :medium, :big ]
  enum mimo_case: [ :adoption, :lost, :found, :foster ]

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

  def show_mimo_case
    case mimo_case
    when "adoption"
      "Adopción"
    when "lost"
      "Perdido"
    when "found"
      "Encontrado"
    when "foster"
      "Acogida"
    end
  end
end
