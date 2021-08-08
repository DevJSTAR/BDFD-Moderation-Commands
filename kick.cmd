//Kicks A User Command
//Prefix: (your_prefix)kick
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[kickmembers;admin;**<a:alert2:856884941894582302>  |  I must have the `Kick Members` or `Administrator` permission to do this!**]
$onlyIf[$mentioned[<]!=$authorID;<a:alert2:856884941894582302>  **|  You can't kick yourself!**]
$onlyIf[$mentioned[<]!=$botID;<a:alert2:856884941894582302>  **|  You can't kick me by me! bruh lol.**]
$argsCheck[>1;<a:alert2:856884941894582302>  **|  Please mention someone! Usage: `>kick <@user> <reason>`**]
$onlyPerms[kickmembers;admin;**<a:alert2:856884941894582302>  |  You must have the `Kick Members` or `Administrator` permission to run this command!**]
$author[Kicked $username[$mentioned[1]]]
$authorIcon[$userAvatar[$mentioned[1]]]
$thumbnail[https://media.discordapp.net/attachments/859909155401891841/873107437371146240/1628235412202.png]
$description[
**$username[$mentioned[1]]** was kicked by **$username**.
**__Offender:__**
<@$mentioned[1]>
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$kickMention[$username#$discriminator[$authorID]: $replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1] | Kicked User ID " $mentioned[1] ".]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[<a:alert2:856884941894582302>  **|  Couldn't find the user. Usage `>kick <@user> <reason>`**]

===========================

//DMs Warned User Command
//Prefix: (your_prefix)kick
//Language: BDScript
---------------------------
$nomention
$onlyBotPerms[kickmembers;admin;]
$onlyIf[$mentioned[<]!=$authorID;]
$onlyIf[$mentioned[<]!=$botID;]
$argsCheck[>1;]
$onlyPerms[kickmembers;admin;]
$dm[$mentioned[1]]
$author[Kicked]
$authorIcon[$userAvatar[$mentioned[1]]]
$thumbnail[https://media.discordapp.net/attachments/859909155401891841/873107437371146240/1628235412202.png]
$description[
You were kicked by **$username** in **$serverName[$guildID]**.
**__Moderator:__**
<@$authorID>
**__Reason:__**
`$replaceText[$replaceText[$checkCondition[$noMentionMessage==];true;Unspecified;-1];false;$noMentionMessage;-1]`
]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
$suppressErrors[]
