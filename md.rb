require 'fileutils'
(ARGV[0]..ARGV[1]).to_a.each { |i|
  dir_name = format "%02d" % i
  FileUtils.mkdir(dir_name)
  file_path = File.expand_path('README.md', dir_name)
  FileUtils.touch(file_path)
  File.open(file_path, "w+") { |f| f.write("[TOC]\n\n") }
}
