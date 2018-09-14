
require 'rspec'

# str = ```
# <!doctype html>

# <html lang="en">
# <head>
#   <meta charset="utf-8">

#   <title>#{title}</title>
# </head>

# <body>
# </body>
# </html>
# ```

def html_generator title
  str = <<-FOO
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>#{title}</title>
</head>

<body>
</body>
</html>
FOO

return str
end

html_generator "My Site"

# describe 'HTML generator' do
#   it 'allows for a dynamic title' do
#     expect(html_generator 'My Site').to match(/My Site/)
#   end
# end