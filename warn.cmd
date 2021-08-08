//Warn User Command
//Prefix: (your_prefix)warn
//Language: BDScript
---------------------------
$nomention
$onlyIf[$isBot[$mentioned[1]]==false;<a:alert2:856884941894582302>  **|  You can't warn bots**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't warn yourself!**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>warn <@user> <reason>`**]
$onlyAdmin[**<a:alert2:856884941894582302>  |  You must have the `Administrator` permission to run this command!**]
$author[Warned]
$authorIcon[https://media.discordapp.net/attachments/828263511678255168/864752160452247552/856885166348959754.png]
$thumbnail[$serverIcon]
$description[**$username[$mentioned[1]]** has been warned by **$username**.
**__Offender:__**
<@$mentioned[1]>
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>warn <@user> <reason>`**]
$setUserVar[warn;$sum[$getUserVar[warn;$mentioned[<]];1];$mentioned[<]]

===========================

//DMs Warned User Command
//Prefix: (your_prefix)warn
//Language: BDScript
---------------------------
$nomention
$onlyIf[$isBot[$mentioned[1]]==false;]
$onlyIf[$mentioned[<]!=$authorID;]
$onlyAdmin[]
$argsCheck[>1;]
$dm[$mentioned[1]]
$author[Warned]
$authorIcon[https://media.discordapp.net/attachments/828263511678255168/864752160452247552/856885166348959754.png]
$thumbnail[$serverIcon]
$description[You were warned by **$username** in **$serverName[$guildID]**.
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[]

====================

//Warn User Command
//Prefix: (your_prefix)checkwarns
//Language: BDScript
---------------------------
$nomention
$onlyIf[$isBot[$mentioned[1]]==false;<a:alert2:856884941894582302>  **|  You can't check a bot's warns!**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't check your own warns!**]$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>checkwarns <@user>`]
$onlyAdmin[**<a:alert2:856884941894582302>  |  You must have the `Administrator` permission to run this command!**]
$thumbnail[https://media.discordapp.net/attachments/828263511678255168/864752160452247552/856885166348959754.png]
$author[$username[$mentioned[1]]'s warns]
$authorIcon[$userAvatar[$mentioned[1]]]
$description[
**$username[$mentioned[1]]** has `$getUserVar[warn;$mentioned[<]]` warn(s)
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>checkwarns <@user>`**]

===========================

//Warn User Command
//Prefix: (your_prefix)clearwarns
//Language: BDScript
---------------------------
$nomention
$onlyIf[$isBot[$mentioned[1]]==false;<a:alert2:856884941894582302>  **|  You can't clear a bot's warns!**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't clear your own warns!**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>clearwarns <@user>`**]
$onlyAdmin[**<a:alert2:856884941894582302>  |  You must have the `Administrator` permission to run this command!**]
$thumbnail[https://media.discordapp.net/attachments/828263511678255168/864752160452247552/856885166348959754.png]
$author[Cleared $username[$mentioned[1]]'s warns]
$authorIcon[$userAvatar[$mentioned[1]]]
$description[
Cleared `$getUserVar[warn;$mentioned[1]]` warn(s) from **$username[$mentioned[1]]**.
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>clearwarns <@user>`**]
$setUserVar[warn;;$mentioned[1]]
