require 'bundler'

Bundler.require

require 'mp3info'

# Note(rstankov): Object from a project I'm working on
module FetchArtwork
  extend self

  ENOUGH_SIZE_TO_KNOW_ID3_SIZE = 4

  def image_from_io(io)
    return nil if io.size < ENOUGH_SIZE_TO_KNOW_ID3_SIZE

    Mp3Info.open(io, parse_tags: true, parse_mp3: false) do |info|
      tag = info.tag2

      return nil if tag.nil?

      pictures = tag.pictures

      # Note(rstankov): Mp3Info uses APIC for fetching images, but some mp3 use the outdated PIC tag
      # more info: https://github.com/moumar/ruby-mp3info/issues/29#issuecomment-126374065
      if pictures.empty?
        tag['APIC'] = tag['PIC']
        pictures = tag.pictures
      end

      return nil if pictures.empty?

      # Note(rstankov): Mp3Info returns [[name, image_data], [name image_data]] for pictures
      return pictures[0][1]
    end

    # Note(rstankov): Certain artwork crashes Mp3Info with the following error
    #  "TypeError: no implicit conversion from nil to integer" at
    #    ruby-mp3info (0.8.7) lib/mp3info/id3v2.rb:318:in `block in pictures'
  rescue Mp3InfoEOFError, TypeError
    nil
  end

  private

  def get_stop_byte(io)
    # Note(rstankov): If we can't decide on the header size now, leave it unknown
    return :unknown if io.size < ENOUGH_SIZE_TO_KNOW_ID3_SIZE

    string = io.string

    # Note(rstankov): the first 3 characters of mp3 header should contain 'ID3'
    # according to: http://id3.org/Developer%20Information
    return 0 if string[0, 3] != 'ID3'

    io = StringIO.new(string)
    io.read(3)

    # Note(rstankov): The follow-up character contains the length of header in bytes
    # It is encoded in synchsafe ( https://en.wikipedia.org/wiki/Synchsafe )
    # Code taken from -https://github.com/moumar/ruby-mp3info/blob/master/lib/mp3info/extension_modules.rb#L37-L39
    size = (io.getbyte << 21) + (io.getbyte << 14) + (io.getbyte << 7) + io.getbyte

    # Note(rstankov): Convert to `io.size` metric size
    size / 8
  end
end

Dir.glob('files/*').each do |file|
  image_data = FetchArtwork.image_from_io(File.open(file))

  if image_data
    File.open("images/#{File.basename(file)}.jpg", 'w') do |image|
      image.write image_data
    end
  end

  puts "#{File.basename(file)}: #{image_data ? 'pass' : 'failed'}"
end
