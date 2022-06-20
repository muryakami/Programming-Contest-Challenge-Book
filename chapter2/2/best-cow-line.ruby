File.open(ARGV[0], 'r') do |file|
  N = file.gets.to_i
  S = []
  T = []

  N.times do
    S << file.gets.chomp
  end

  while(!S.empty?) do
    if S.first < S.last
      T << S.shift
    else
      T << S.pop
    end
  end

  puts T.join
end
