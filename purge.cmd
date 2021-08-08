//Purge Messages Command
//Prefix: (your_prefix)purge
//Language: BDScript
---------------------------
$nomention
$onlyPerms[managemessages;admin;**<a:alert2:856884941894582302>  |  You must have the `Manage Messages` or `Administrator` permission to run this command!**]
$onlyBotPerms[managemessages;admin;**<a:alert2:856884941894582302>  I must have the `Manage Messages` or `Administrator` permission to do this!**]
$onlyIf[$message[1]!=;**<a:alert2:856884941894582302>  |  Please specify a number!**]
$onlyIf[$isNumber[$message[1]]==true;**<a:alert2:856884941894582302>  |  Given Amount is not a valid number!**]
$deletecommand
$author[Purging...]
$authorIcon[$authorAvatar]
$description[
**$username#$discriminator[$authorID]** purged **$message[1]** messages.
]
$clear[$message[1]]
$color[00FFFF]
$addTimestamp
$footer[Discord Bots Dévelopment Ⓒ︎ 2021]
