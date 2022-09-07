task :compile_sass do
  `sass --no-source-map ./html/css/`
  `cp html/css/sakura-zef.css html/sakura-zef.css`
end

task publish_html: [:compile_sass] do
  `pandoc -s -c sakura-zef.css -o html/vocabulary.html vocabulary.md`
  `pandoc -s -c sakura-zef.css -o html/index.html index.md`
end

task default: [:publish_html] do
end

desc "Generate HTML files"
task :html do
  `marp -w --input-dir ./slides --output ./html`
end

desc "Start the marp server"
task :server do
  `marp -s ./slides`
end

# desc "Open the localhost page"
# task :open do
#   `open http://localhost:8080/`
# end

