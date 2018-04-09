module ZeroLogger

	@loggers
	
	def ZeroLogger.logger(tag)
		@loggers = Hash.new if @loggers.nil?

		@loggers[tag] = Log.new(tag) if !@loggers.key?(tag)
		@loggers[tag]
	end

	class Log
		attr_reader :tag, :level
		attr_writer :level

		def initialize(tag)
			@tag = tag
			@msgs = Array.new
			@error_msgs = Array.new
			@level = 0
		end

		def begin(msg)
			@msgs << LogMsg.new(msg, level)
		end

		def add_msg(msg)
			@msgs << LogMsg.new(msg, @level)
		end

		def add_error(msg)
			@error_msgs << LogMsg.new(msg, 1)
		end

		def log
			if !@error_msgs.empty?
				begin_msg = @msgs[0]
				puts begin_msg
				@error_msgs.each { |error| puts error.to_error }
			else
				@msgs.each { |msg| puts msg }
			end
			puts 'end.'

			@msgs.clear
			@error_msgs.clear
		end
	end

	private
	  class LogMsg
	  	attr_reader :msg, :level
	  	def initialize(msg, level)
	  		@msg = msg
	  		@level = level
	  	end

	  	def to_s
	  		spaces = ''
	  		(@level * 2).times { |i| spaces += ' ' }
	  		"#{spaces}#{@msg}"
	  	end

	  	def to_error
	  		spaces = ''
	  		(@level * 2).times { |i| spaces += ' ' }
	  		"#{spaces}[ERROR] #{@msg}"
	  	end
	  end
end


