def main
  s = []
  t = []

  File.open(ARGV[0], 'r') do |file|
    n = file.gets.to_i

    n.times do
      s << file.gets.chomp
    end
  end

  while(!s.empty?) do
    if s.join < s.reverse.join
      t << s.shift
    else
      t << s.pop
    end
  end

  puts t.join
end

main
