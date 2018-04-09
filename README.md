# ZeroLogger

## Sample code
require 'ZeroLogger'

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

Normal output:
```lunch
drink
dinner
meat
rice
fish
rice
sweetmeats
End.```

ZeroLogger output:
```lunch
	drink
	dinner
		meat
		rice
		fish
		rice
	sweetmeats
End.```