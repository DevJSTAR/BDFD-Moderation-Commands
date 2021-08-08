//Bans A User Command
//Prefix: (your_prefix)ban
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[banmembers;admin;**<a:alert2:856884941894582302>  |  I must have the `Ban Members` or `Administrator` permission to do this!**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't ban yourself!**]
$onlyIf[$mentioned[<]!=$botID;<a:alert2:856884941894582302>  **|  You can't ban me by me! bruh lol.**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>ban <@user> <reason>`**]
$onlyPerms[ban;admin;**<a:alert2:856884941894582302>  |  You must have the `Ban Members` or `Administrator` permission to run this command!**]
$author[Banned $username[$mentioned[1]]]
$authorIcon[$userAvatar[$mentioned[1]]]
$thumbnail[https://media.discordapp.net/attachments/828263511678255168/864866654831771658/1626270615078.png]
$description[
**$username[$mentioned[1]]** was banned by **$username**.
**__Offender:__**
<@$mentioned[1]>
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$ban[$username#$discriminator[$authorID]: $replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1] | Banned User ID " $mentioned[1] ".]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>ban <@user> <reason>`**]

===========================

//DMs Banned User
//Prefix: (your_prefix)ban
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[banmembers;admin;**<a:alert2:856884941894582302>  |  I must have the `Ban Members` or `Administrator` permission to do this!**]
$onlyIf[$mentioned[<]!=$botID;]
$onlyIf[$mentioned[<]!=$authorID;]
$argsCheck[>1;]
$onlyPerms[ban;admin;]
$dm[$mentioned[1]]
$author[Banned]
$authorIcon[https://media.discordapp.net/attachments/828263511678255168/864866654831771658/1626270615078.png]
$thumbnail[$serverIcon]
$description[You were banned by **$username** in **$serverName[$guildID]**.
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[]

===========================

//UnBan User Command
//Prefix: (your_prefix)unban
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[banmembers;admin;**<a:alert2:856884941894582302>  |  I must have the `Ban Members` or `Administrator` permission to do this!**]
$onlyIf[$isNumber[$message[1]]==true;**<a:alert2:856884941894582302>  |  Please type the correct id.**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You are not banned and can't unban yourself!**]
$onlyIf[$mentioned[<]!=$botID;<a:alert2:856884941894582302>  **|  You can't unban me by me! bruh lol.**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>unban <userID>`**]
$onlyPerms[ban;admin;**<a:alert2:856884941894582302>  |  You must have the `Ban Members` or `Administrator` permission to run this command!**]
$author[Unbanned $username[$message[1]]]
$authorIcon[$userAvatar[$message[1]]]
$thumbnail[https://media.discordapp.net/attachments/828263511678255168/864866654831771658/1626270615078.png]
$description[
**$username[$message[1]]** was unbanned by **$username[$authorID]**.
**__Unbanned:__**
<@$message[1]>
**__Moderator:__**
<@$authorID>
]
$unbanID
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Something went wrong! please give the correct USER ID. Usage: `>unban <userID>`**]
