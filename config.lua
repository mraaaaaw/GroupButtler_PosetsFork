return {
	bot_api_key = "383390284:AAGJuVOBnvkvvsuec5dV-H77vvXPvJ2kfBA", --Please add your bot api key here!
	cmd = '^[/!#]',
	allowed_updates = {"message", "edited_message", "callback_query"},
	db = 0, --default redis db: 0
	superadmins = {
	336522318, --me
	193601106, --blood
	118957784 --shizoid
	},

	log = {
		chat = -1001065313446, -1001141493113,  --Your log chat, where your bot must be added!
		admin = 336522318, --The admin.
		stats = true
	},
	human_readable_version = '4.2.0',
	bot_settings = {
		cache_time = {
			adminlist = 1800, --5 hours (18000s) Admin Cache time, in seconds.
			alert_help = 72,  -- amount of hours for cache help alerts
			chat_titles = 18000,
		},
		report = {
			duration = 1200,
			times_allowed = 2,
		},
		notify_bug = false, --Notify if a bug occurs!
		log_api_errors = true, --Log errors, which happening whilst interacting with the bot api.
		stream_commands = true,
		admin_mode = true,
		debug_connections = false,
		realm_max_members = 60,
		realm_max_subgroups = 6
	},
	plugins = {
		'onmessage', --THIS MUST BE THE FIRST: IF AN USER IS FLOODING/IS BLOCKED, THE BOT WON'T GO THROUGH PLUGINS
		'antispam', --SAME OF onmessage.lua
		--'realms', --must stay here
		'backup',
		'banhammer',
		'block',
		'configure',
		'dashboard',
		'floodmanager',
		'help',
		'links',
		'logchannel',
		'mediasettings',
		'menu',
		'moderators',
		'pin',
		'private',
		'private_settings',
		'report',
		'rules',
		'service',
		'setlang',
		'users',
		'warn',
		--'welcome',
		'admin',
		'extra', --must be the last plugin in the list.
	},
	multipurpose_plugins = {},
	available_languages = {
		['en'] = 'English 🇬🇧',
		['it'] = 'Italiano 🇮🇹',
		['es'] = 'Español 🇪🇸',
		['pt_BR'] = 'Português 🇧🇷',
		['ru'] = 'Русский 🇷🇺',
		['de'] = 'Deutsch 🇩🇪',
		--['sv'] = 'Svensk 🇸🇪',
		['ar'] = 'العربية 🇸🇩',
		--['fr'] = 'Français 🇫🇷',
		['zh'] = '中文 🇨🇳',
		['fa'] = 'فارسی 🇮🇷',
		['id'] = 'Bahasa Indonesia 🇮🇩',
		['nl'] = 'Dutch 🇱🇺'
		-- more languages will come
	},
	allow_fuzzy_translations = true,
	chat_settings = {
		['settings'] = {
			['Welcome'] = 'off',
			['Goodbye'] = 'off',
			['Extra'] = 'on',
			['Flood'] = 'on',
			['Silent'] = 'on',
			['Rules'] = 'off',
			['Reports'] = 'on',
			['Welbut'] = 'on',
			['Antibot'] = 'off'
		},
		['antispam'] = {
			['links'] = 'alwd',
			['forwards'] = 'alwd',
			['warns'] = 2,
			['action'] = 'ban'
		},
		['flood'] = {
			['MaxFlood'] = 5,
			['ActionFlood'] = 'kick'
		},
		['char'] = {
			['Arab'] = 'allowed', --'kick'/'ban'
			['Rtl'] = 'allowed'
		},
		['floodexceptions'] = {
			['text'] = 'no',
			['photo'] = 'no', -- image
			['forward'] = 'no',
			['video'] = 'no',
			['sticker'] = 'no',
			['gif'] = 'no',
		},
		['warnsettings'] = {
			['type'] = 'ban',
			['mediatype'] = 'ban',
			['max'] = 3,
			['mediamax'] = 2
		},
		['welcome'] = {
			['type'] = 'no',
			['content'] = 'no'
		},
		['goodbye'] = {
			['type'] = 'custom',
		},
		['media'] = {
			['photo'] = 'ok', --'notok' | image
			['audio'] = 'ok',
			['video'] = 'ok',
			['sticker'] = 'ok',
			['gif'] = 'ok',
			['voice'] = 'ok',
			['contact'] = 'ok',
			['document'] = 'ok', -- file
			['link'] = 'ok',
			['game'] = 'ok',
			['location'] = 'ok'
		},
		['tolog'] = {
			['ban'] = 'yes',
			['kick'] = 'yes',
			['unban'] = 'yes',
			['tempban'] = 'yes',
			['report'] = 'yes',
			['warn'] = 'yes',
			['nowarn'] = 'yes',
			['mediawarn'] = 'yes',
			['spamwarn'] = 'yes',
			['flood'] = 'yes',
			['promote'] = 'yes',
			['demote'] = 'yes',
			['cleanmods'] = 'yes',
			['new_chat_member'] = 'yes',
			['new_chat_photo'] = 'yes',
			['delete_chat_photo'] = 'yes',
			['new_chat_title'] = 'yes',
			['pinned_message'] = 'yes',
			['blockban'] = 'yes',
			['block'] = 'yes',
			['unblock'] = 'yes'
		},
		['modsettings'] = {
			['promdem'] = 'yes', --'yes': admins can promote or demote moderators; 'no': only the owner can
			['hammer'] = 'yes',
			['config'] = 'no',
			['texts'] = 'no'
		}
	},
	private_settings = {
		rules_on_join = 'off',
		reports = 'yes'
	},
	chat_hashes = {'extra', 'info', 'links', 'warns', 'mediawarn', 'spamwarns', 'blocked', 'report'},
	chat_sets = {'whitelist', 'mods'},
	bot_keys = {
		d3 = {'bot:general', 'bot:usernames', 'bot:chat:latsmsg'},
		d2 = {'bot:groupsid', 'bot:groupsid:removed', 'tempbanned', 'bot:blocked', 'remolden_chats'} --remolden_chats: chat removed with $remold command
	}
}
