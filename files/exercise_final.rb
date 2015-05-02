require 'json'  
require 'csv'
require 'axlsx'     # Excel
require 'nokogiri'  # XML

slashdot_articles = []
File.open("slashdot.xml", "r") do |f|
  doc = Nokogiri::XML(f)
  slashdot_articles = doc.css('item').map { |i|
    {
      title:   i.at_css('title').content,
      link:    i.at_css('link').content,
      summary: i.at_css('description').content
    }
  }
end
puts "[Slashdot Articles]"
slashdot_articles.each { |article| p article }

feedzilla_articles = []
File.open("feedzilla.json", "r") do |f|
  # Force the encoding to UTF-8
  #items = JSON.parse(f.read)
  encoded_file_content = f.read.force_encoding("UTF-8")
  items = JSON.parse(encoded_file_content)
  feedzilla_articles = items['articles'].map { |a|
    {
      title:   a['title'],
      link:    a['url'],
      summary: a['summary']
    }
  }
end
puts "[Feedzilla Articles]"
feedzilla_articles.each { |article| p article }

sorted_articles = (feedzilla_articles + slashdot_articles).sort_by { |a| a[:title] }
puts "[Sorted Articles]"
sorted_articles.each { |article| p article }

CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |a| csv << [ a[:title], a[:link], a[:summary] ] }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
  sorted_articles.each { |a| sheet.add_row [ a[:title], a[:link], a[:summary] ] }
end
pkg.serialize("articles.xlsx")