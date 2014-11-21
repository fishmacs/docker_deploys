#! /usr/bin/ruby

dockers = IO.popen 'sudo docker ps -a' do |f|
  f.each_line.to_a[1..-1]
end

dockers = dockers.map do |s|
  s.split(/\s{2,}/)
end

targets = dockers.select do |d|
  d[4] =~ /^Exited/
end

targets.each do |d|
  `sudo docker rm #{d[0]}`
end
