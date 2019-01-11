require 'open3'

Open3.popen3("sleep 2; ls -l") do |stdout, stderr, status, thread|
  while line=stderr.gets do
    puts(line)
    puts "-------"
  end
  #puts "STDOUT: #{stdout}"
end
