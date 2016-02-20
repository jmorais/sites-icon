# Site Icon

A single app to change the default site folder icon on Finder sidebar to a nicer one. On older versions of OS X, the `~/Sites` folder had a custom icon on Finder sidebar, remembering the Safari
icon. Then it was removed. That's what this app does. Bring back the icon.

![before-after](https://cloud.githubusercontent.com/assets/556684/13140213/116822c2-d607-11e5-95dc-ff951e10f4a9.gif)

## Usage

Open `SiteIcon/FinderSync.m` file and in the line:

```objective-c
self.myFolderURL = [NSURL fileURLWithPath:@"/Users/jmorais/Sites"];
```

Change to the path of your own Sites folder. Then build the project
and it's done.

## Credits

Developed by José Morais ([@jmorais](https://github.com/jmorais))