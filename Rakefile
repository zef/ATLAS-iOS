task :compile_sass do
  `sass --no-source-map ./html/css/`
  `cp html/css/sakura-zef.css html/sakura-zef.css`
end

task publish_html: [:compile_sass] do
  `pandoc -s -c sakura-zef.css -o html/vocabulary.html vocabulary.md`
  `pandoc -s -c sakura-zef.css -o html/index.html index.md`
end

desc "Generate HTML files for slides, starts watching for changes."
task :slides do
  `marp -w --input-dir ./slides --output ./html`
end

desc "Start the marp server"
task :server do
  `marp -s ./slides`
end

desc "Build the update repo tool, and run it if the build is successful."
task :build_repo_tool do
  if system 'xcodebuild -project update-student-repos/update-student-repos.xcodeproj'
    `mv update-student-repos/build/Release/update-student-repos update-repos`
    system './update-repos'
  end
end

task default: [:publish_html] do
end

# desc "Open the localhost page"
# task :open do
#   `open http://localhost:8080/`
# end

