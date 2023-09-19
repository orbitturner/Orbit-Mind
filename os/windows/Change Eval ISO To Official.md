
[Source](https://serverfault.com/posts/1119857/timeline)

I had the same issue and I resolved it by mounting the ISO and changing the edition.

After copying the ISO files to a folder I ran the following:

`dism /mount-wim /wimfile:c:\ISO\sources\install.wim /mountdir:c:\mount /index:2`

`dism /image:c:\mount /get-currentedition`

`dism /image:c:\mount /get-targeteditions`

`dism /image:c:\mount /set-edition:ServerStandard`

`dism /unmount-wim /mountdir:c:\mount /commit`

Then I ran the setup file and it still listed eval under the options, but then it allowed me to choose to keep my files.