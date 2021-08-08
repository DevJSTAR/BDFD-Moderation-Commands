//Mute User Command
//Prefix: (your_prefix)mute
//Variable:
//Name: muterole
//Value: empty literally nothing
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[manageroles;admin;**<a:alert2:856884941894582302>  |  I must have the `Manage Roles` or `Administrator` permission to do this!**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't mute yourself!**]
$onlyIf[$mentioned[<]!=$botID;<a:alert2:856884941894582302>  **|  You can't mute me by me! bruh lol.**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>mute <@user> <reason>`**]
$onlyPerms[manageroles;admin;**<a:alert2:856884941894582302>  |  You must have the `Manage Roles` or `Administrator` permission to run this command!**]
$author[Muted $username[$mentioned[1]]]
$authorIcon[$userAvatar[$mentioned[1]]]
$thumbnail[https://media.discordapp.net/attachments/859909155401891841/865532665532383242/1626429432657.png]
$description[
**$username[$mentioned[1]]** was muted by **$username[$authorID]**.
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
$mute[$roleName[$getServerVar[muterole]]]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>mute <@user> <reason>`**]

===========================

//UnMutes User Command
//Prefix: (your_prefix)unmute
//Variable:
//Name: muterole
//Value: empty literally nothing
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[manageroles;admin;**<a:alert2:856884941894582302>  |  I must have the `Manage Roles` or `Administrator` permission to do this!**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>unmute <@user>`**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You are not muted and can't unmute yourself!**]
$onlyIf[$mentioned[<]!=$botID;<a:alert2:856884941894582302>  **|  You can't unmute me by me! bruh lol.**]
$onlyPerms[manageroles;admin;**<a:alert2:856884941894582302>  |  You must have the `Manage Roles` or `Administrator` permission to run this command!**]
$author[UnMuted $username[$mentioned[1]]]
$authorIcon[$userAvatar[$mentioned[1]]]
$thumbnail[https://media.discordapp.net/attachments/859909155401891841/865532665532383242/1626429432657.png]
$description[
**$username[$mentioned[1]]** was unmuted by **$username[$authorID]**.
**__Offender:__**
<@$mentioned[1]>
**__Moderator:__**
<@$authorID>
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$unmute[$roleName[$getServerVar[muterole]]]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>unmute <@user>`**]

===========================

//DMs Muted User Command
//Prefix: (your_prefix)mute
//Variable:
//Name: muterole
//Value: empty literally nothing
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[manageroles;admin;**<a:alert2:856884941894582302>  |  I must have the `Manage Roles` or `Administrator` permission to do this!**]
$onlyIf[$mentioned[<]!=$authorID;]
$onlyIf[$mentioned[<]!=$botID;]
$argsCheck[>1;]
$onlyPerms[manageroles;admin;]
$dm[$mentioned[1]]
$author[Muted]
$authorIcon[https://media.discordapp.net/attachments/859909155401891841/865532665532383242/1626429432657.png]
$thumbnail[$serverIcon]
$description[
You were muted by **$username[$authorID]** in **$serverName[$guildID]**.
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[]
