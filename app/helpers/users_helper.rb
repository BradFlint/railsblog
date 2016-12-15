module UsersHelper
	def test
		"Hello World"
	end

	def headline(headline)
		%Q{
			<h1>#{headline}</h1>
		}.html_safe
	end

	def header(headline)
		content_tag :h1, headline
	end

	def test2
		"Enferno"
	end

	
end
