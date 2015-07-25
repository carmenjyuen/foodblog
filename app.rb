require "rubygems"
require "sinatra"

class App < Sinatra::Base
	set :static, true
	set :public, File.dirname(__FILE__) + "/public"

	get "/" do 
		@entries = (1..20).map { |i| "<div class='blogentry'>
	<div id='title'> Sushi #{i} </div>
	<div id='video'>
		<iframe width='560' height='315' src='https://www.youtube.com/embed/tbsFAEz5vok?showinfo=0' frameborder='0' allowfullscreen></iframe>
	</div>
	<div id='post_text'></div>
</div>"}
		erb:foodblog_template
	end
end

