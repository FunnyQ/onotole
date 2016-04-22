seed_files_list = Dir[File.join(Rails.root, "db", "seeds", "*.rb")]
seed_files_list.sort.each_with_index do |seed, i|
  load seed
  puts "Progress #{i + 1}/#{seed_files_list.length}. Seed #{seed.split('/').last.sub(/.rb$/, '')} loaded"
end
