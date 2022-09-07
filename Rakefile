task :compile_sass do
  `sass --no-source-map ./html/css/`
end

task publish_html: [:compile_sass] do
  `pandoc -s -c sakura-zef.css -o html/vocabulary.html vocabulary.md`
  `pandoc -s -c sakura-zef.css -o html/index.html index.md`
end

task default: [:publish_html] do
end
