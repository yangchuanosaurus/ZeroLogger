require 'minitest/autorun'
require 'zero_logger'

class ZeroLoggerTest < Minitest::Test
	
	def test_logger
		logger = ZeroLogger.logger("A")
		logger.begin("Lunch")
		logger.level = 1
		logger.add_msg("drink")
		logger.add_msg("dinner")
		logger.level = 2
		logger.add_msg("meat")
		logger.add_msg("rice")
		logger.add_msg("fish")
		logger.add_msg("rice")
		logger.level = 1
		logger.add_msg("sweetmeats")
		logger.log
	end

end