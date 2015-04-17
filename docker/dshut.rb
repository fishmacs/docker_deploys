#! /usr/bin/ruby

dockers = IO.popen 'sudo docker ps' do |f|
  f.each_line.to_a[1..-1]
end

dockers = dockers.map do |s|
  s.split(/\s{2,}/)
end

# # targets = dockers.select do |d|
# #   d[4] =~ /^Exited/
# # end

# targets = dockers.select do |d|
#   d[4] !~ /^Up/
# end

dockers.each do |d|
  `sudo docker stop #{d[0]}`
end

`clean.rb`
