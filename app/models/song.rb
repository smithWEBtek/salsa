class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true
  
  after_validation :set_slug, only: [:create, :update]
  
  def to_param
    "#{id}-#{slug}"
  end

  def rename_audio_file
    # iterate through all the audio files in /public/audios/*.mp3
    # slugify the title of the mp3
    # find_or_create_by slugified_title
    # set capitalized_title
    # find the matching Song instance

  end

  def self.set_slugs
    self.all.each do |song|
      song.update(slug: song.title.parameterize)
    end
  end

  def self.rename_files
    self.all.each do |song|
      title = song.set_slug + 'mp3'
      # Rails.root.join('app', 'public' 'assets', 'audios').concat()
      
    end
  end

  private
  def set_slug
    self.slug = title.to_s.parameterize
  end 
end
