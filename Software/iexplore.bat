rem This is a horrible little script that invokes an Internet Explorer 11 window. Borrowed it from somewhere else on the internet, sorry to whoever I grabbed it from, I don't remember who you are, but I'm sure documentation is out there to explain everything going on here.
rem I'm uploading this in case it happens to be useful, but frankly, I can't see why you would use IE11 for *anything* aside from very specific internal tooling, in which case, you're probably not using a batch script uploaded by a random person. Or maybe you are, I dunno. 
rem DO NOT USE THIS FOR NORMAL USERS.

powershell -noprofile -executionpolicy bypass -windowstyle hidden -command "(new-object -com internetexplorer.application).visible=$true"
