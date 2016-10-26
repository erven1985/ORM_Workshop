require 'sinatra'

def all

	command = `sqlite3 uncubed.db "SELECT * FROM jobs"`
	return command.to_s.gsub(/[^a-zA-Z ]/, ' ')
end

def first
command = `sqlite3 uncubed.db "SELECT * FROM jobs ORDER BY ID LIMIT 1"`
	return command.to_s.gsub(/[^a-zA-Z ]/, '')
end

def last
command = `sqlite3 uncubed.db "SELECT * FROM jobs ORDER BY id desc LIMIT 1"`
	return command.to_s.gsub(/[^a-zA-Z ]/, '')
end


get '/' do 

	@user = first()

end
  