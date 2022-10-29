build-tgbot:
	$(MAKE) -C services/telegram-bot build
	(docker-compose ps | grep -P "telegram-bot\W*(restarting|running)") && docker-compose restart telegram-bot

build-oms:
	$(MAKE) -C services/oms build
	(docker-compose ps | grep -P "oms\W*(restarting|running)") && docker-compose restart oms
