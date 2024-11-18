require 'nokogiri'
require 'open-uri'
require 'optparse'

# Parsing opsi
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby ngambil.rb -u URL"

  opts.on("-u", "--url URL", "URL target untuk scraping") do |url|
    options[:url] = url
  end
end.parse!

# Validasi URL
if options[:url].nil?
  puts "Error: URL harus diberikan menggunakan opsi -u."
  puts "Contoh: ruby ngambil.rb -u https://example.com/blog"
  exit
end

url = options[:url]

begin
  puts "Lagi ngambil data sabar yahh #{url}..."
  html = URI.open(url)
  doc = Nokogiri::HTML(html)

  # Selector khusus untuk AntaraNews
  title = doc.css('h1.post-title').text.strip
  content = doc.css('div.post-content p').map(&:text).join("\n")

  if title.empty? && content.empty?
    puts "Ga ada data penting yang ditemukan di halaman ini."
  else
    puts "\n=== Informasi Berita ==="
    puts "Judul: #{title}\n\n"
    puts "Isi Berita:\n#{content}"
  end
rescue OpenURI::HTTPError => e
  puts "Gagal buka URL mu!: #{e.message}"
rescue SocketError
  puts "Yang bener ngasih linknya bro!."
rescue StandardError => e
  puts "Terjadi error: #{e.message}"
end
