def main(args)
  s = []
  t = []

  File.open(args, 'r') do |file|
    n = file.gets.to_i

    n.times do
      s << file.gets.chomp
    end
  end

  while(!s.empty?) do
    if comparsion(s)
      t << s.shift
    else
      t << s.pop
    end
  end

  puts t.join
end

def comparsion(s)
  return true if s.size <= 1

  if s.first < s.last
    return true
  elsif s.first > s.last
    return false
  else
    comparsion(s[1...-1])
  end
end

main(ARGV[0])
