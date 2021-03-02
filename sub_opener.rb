#puts Dir.children(".")

#This looks for all files ending in .mp4
cutscenes = Dir.glob("*.mp4")


#This segment takes the list created earlier and uses it to create a new list of files that I'm going to want to look for, that being vidname_en.srt
sub_list = []
cutscenes.each do |vid|
  #.sub uses a regular expression to scan for an exact match of the code I've given it, in this case .mp4. It then replaces those characters with _en.srt
  sub_file = vid.sub(/.mp4/, "_en.srt")
  sub_list << sub_file
end


missing_sub_list = []

sub_list.each do |subtitle|
  if File.exist?(subtitle) == false
    missing_sub_list << subtitle
  end
end

no_sub_list = []
missing_sub_list.each do |subtitle|
  sub_zip_file = subtitle.sub(/_en.srt/, ".zip")

  if File.exist?(sub_zip_file) == true
    `7z e #{sub_zip_file} -y`
  else
    no_sub_list << sub_zip_file
  end
end

if no_sub_list.empty? == false 
  puts "Could not find the following subtitle zips, please check manually"
  puts no_sub_list
end





