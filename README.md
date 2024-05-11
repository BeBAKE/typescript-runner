# typescript-runner

This npm package aims to automate the build and execution of your typescript project.


## Installation
install with npm

```bash
npm install typescript-runner
```

After that put the following in the script tag of package.json 

```javascript
{
  "scripts": {
    "[npm-script-command]" : "bash ./node_modules/typescript-runner/tsRunner.sh"
  }
}
```
preferably replace "[npm-script-command]" with "start" , so that it can work wihtout using run.

## Usage

> This only works if your typescript files are in src folder and your javascript files are in dist folder. You can change the behaviour from the bash script .
> Also this is primarily suited for Unix-based systems like Linux and macOS

1.  With filename
```bash
node [npm-script-command] [optional-filename.ts]
```

Replace  `[optional-filename.js]`  with the name of the typescript file you want to run and replace [npm-script-command] with the name of script command you used above . 

2. Without filename

```bash
node [npm-script-command]
```
If no filename is provided, the script will run the most recently saved JavaScript file.
