class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  
  after_validation :set_slug, only: [:create, :update]
  
  def to_param
    "#{id}-#{slug}"
  end

  def self.refresh_songs
    path = Rails.root.join('public', 'audios', '*.mp3')
    Dir.glob(path.to_s) do |file|
      song = Song.find_or_create_by(title: file.split('/').last.split('.mp3').first)
      song.audio = file
      song.save
    end
  end
 
  private
  def set_slug
    self.slug = title.to_s.parameterize
  end 
end
