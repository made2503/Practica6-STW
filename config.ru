require './lib/RockPaperScissors'


	use Rack::Static, :urls => ['/public']
	use Rack::ShowExceptions
	use Rack::Lint
	use Rack::Session::Cookie,
		{:key => 'rack.session',
		:secret => 'cookie'}

    use Rack::Server.start(
	 :app => RockPaperScissors::RPS.new,
	 :Port => 8080,
	 :server => 'thin'
	)

	run RockPaperScissors::RPS.new