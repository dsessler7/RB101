flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_be = flintstones.find_index { |elem| elem[0, 2] == 'Be' }
p index_be
