require_relative 'program'

for name in ['pinit', 'cpbuf', 'difii']
  program = Program.new('enuesaa', name)
  checksums = program.fetch_checksums
  version = program.fetch_version
  program.write(version, checksums)
end
