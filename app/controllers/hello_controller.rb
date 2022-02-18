class HelloController < ApplicationController
  def index
    if params['msg'] != nil then
      msg = 'Hello,'+ params['msg'] + '!'
    else
      msg = 'this is sample page. there is no msg.'
    end

    html = '
      <html>
      <body>
        <h1>Sample Page</h1>
        <p>'+msg+'</p>
      </body>
      </html>
      '
    render html:html.html_safe
  end
end
