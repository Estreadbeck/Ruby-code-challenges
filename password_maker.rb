def make_password(phrase)
  password = ''
  phrase.split(" ").map {|i| password << i[0].gsub(/[ios]/i, 'i' => 1, 'o' => 0, 's' => 5, 'I' => 1, 'O' => 0, 'S' => 5) }
  p password
end

make_password ("Give me liberty Or give me death")