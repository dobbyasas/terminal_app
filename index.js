// Import required libraries
const exec = require('child_process').exec;

// Command array
let commands = ['ls', 'date'];

// Function to execute commands
function runCommands(i) {
  if (i >= commands.length) return;

  // execute command
  exec(commands[i], (error, stdout, stderr) => {
    if (error) {
      console.log(`Error: ${error.message}`);
      return;
    }
    if (stderr) {
      console.log(`stderr: ${stderr}`);
      return;
    }

    console.log(`stdout: ${stdout}`);

    // run next command in array
    runCommands(i + 1);
  });
}

// Start executing commands
runCommands(0);
