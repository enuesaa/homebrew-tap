require_relative 'program'

for name in ['pinit', 'cpbuf', 'difii', 'walkhttp', 'loadii', 'dotslide', 'cywagon']
  puts "#{name}: start"
  program = Program.new('enuesaa', name)
  checksums = program.fetch_checksums
  version = program.fetch_version
  puts "#{name}: write"
  program.write(version, checksums)
end
