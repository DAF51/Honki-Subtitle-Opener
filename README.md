# Honki-Subtitle-Opener
A small progam used to unizp all of the subtitle files in the video folder of Honkai impact's PC client.

This setup will take some effort, but in the long run, it'll save you a whole lot of time and effort.

1) Download and install ruby here https://rubyinstaller.org/downloads/ Without ruby, the program won't run.
2) If you don't already have it, download and install 7zip from here https://www.7-zip.org/download.html
3) Set 7zip as a system environement variable. To do that, do the following
  3a) Go to your windows search bar and type in "environment". It should autocomplete to "Edit the system environment variables". Click on that and a "system properties" window should open up. 
  
  3b)On the bottom right hand of the box there should be an option labeled "Environment Variables..." Click on that. A new window labeled "Environment variables" should          open up. 
  
  3c)There should be two lists. User variables, and below that, system variables. In the User Variables box, there should be an option labeled "Path". Click on that, and then on "edit". That'll open a new window labeled "Edit environment variable"
  
  3d) On the right hand side of the window there will be a series of options. At the very top is one labeled "new". Click on that and you should be able to add a new path. Type in the file path of your 7zip folder. Mine for example is located at 
  
  C:\Program Files (x86)\7-Zip  
  
  Make sure you type it in exactly, including all appropriate spaces and capitalization. Once you've written out the file path, hit OK.
  
4) In order to make sure that it worked, go to your windows search box and search for "powershell". It should present you with an app labeled "windows powershell". Click on it.
5) A dos looking box should open up. Type in the command 7z. If it says that 7z is not a recognized command, then go back to step 3 and make sure you put in the 7zip folder location correctly. If on the other hand it prints out a ton stuff, starting with 

Usage: 7z<command> [<switches>...] <archive_name> [<file_names>...]
       [@listfiles...]

Then you've done it correctly. Congratulations, the hard part is now over! All that's left to do now is to use the opener. First, download the file and place it in Honkai Impact's video folder. The file path should look something like 

C:\Honkai Impact 3rd\Games\BH3_data\StreamingAssets\Video

There are 2 ways to use it, the quick and easy way and the slightly more complex, but more informative way

THE QUICK AND EASY WAY
1) Once the ruby file is in Honkai impact's video folder, simply double click on it and that's it, it's done! It should, assuming all goes well, unzip any folders you haven't already manually unzipped yourself.

THE SLIGHTLY MORE COMPLEX WAY
This program has a secondary function: It can print out a list of files video files that it couldn't find a corresponding subtitle zip folder to. Sometimes Honkai's devs mislabel their subtitle files, meaning that even if you unzip the file, the video in game still won't have subtitles. This program's function can help you pinpoint those mislabeled files, so you can manually rename them to get them to work. In see this list, you must do the following:

1) Open powershell
2) Set your location to honkai impact's video folder. This can be done by using the set location command.  The following is an example of how that command would work, assuming you installed honkai impact into your C drive

Set-Location -Path C:\"Honkai Impact 3rd"\Games\BH3_data\StreamingAssets\Video

It's worth noting that if your file path includes a location wtih spaces in its name, then it must be in quotation marks, otherwise powershell won't be able to find it. In the example above, if "Honkai Impact 3rd" was not in quotations, powershell would tell me that the file path does not exist. Note: This doesn't mean that you have to change the name of the honkai impact folder to include quotations, just that you need them when you're naming a file path in powershell.

3) Once your location has been set to that folder, type in ruby -v, and then press enter. You'll know it works if it prints out a ruby version number.
4) Type in the command ruby sub_opener.rb and hit enter.
5) If you did the previous steps correctly, the program should run and it should give you a list of files to look for manually. It's worth noting, not every video
in honkai impact has dialogue, so they don't need subtitles. The program will mark those as having missing subtitles all the same. Just ignore those.
