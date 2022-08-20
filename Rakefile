desc "Generate HTML files and put them in the right folder"
task :html do
  `marp .`
  `mv *.html html`
end

desc "Start the marp server"
task :server do
  `marp -s .`
end

desc "Open the localhost page"
task :open do
  `open http://localhost:8080/`
end

task default: [:server] do
end
