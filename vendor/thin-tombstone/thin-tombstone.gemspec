# Tombstone for the thin web server, which this app no longer uses.
# It provides a `thin` executable so muscle-memory `bundle exec thin start`
# points at the replacement instead of failing with "command not found".
Gem::Specification.new do |s|
  s.name = "thin-tombstone"
  s.version = "1.0.0"
  s.summary = "Reminds you that thin was replaced by Puma"
  s.authors = ["Patrick Hayes"]
  s.license = "MIT"
  s.files = ["exe/thin"]
  s.bindir = "exe"
  s.executables = ["thin"]
end
