class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob("#{@path}/*").map {|file| file.split("/").last}
  end

  def import
    files.each {|file| file = Song.create_from_filename(file)}
  end
end
