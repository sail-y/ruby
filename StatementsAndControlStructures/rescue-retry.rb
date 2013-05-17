require 'open-uri'

tries = 0
begin
	tries = 0
	open('http://www.example.com') { |f| puts f.readlines}
rescue OpenURI::HTTPError => e
	puts e.message
	if (tries < 4)
		sleep(2**tries)
	end
end