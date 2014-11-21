#! /usr/bin/ruby

pkgs1 = File.open(ARGV[0]).map do |line|
  line.split()[0]
end

pkgs2 = File.open(ARGV[1]).map do |line|
  line.split()[0]
end

diff = pkgs2 - pkgs1
puts pkgs1.size, pkgs2.size
puts diff


