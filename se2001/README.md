# Welcome to the System Commands VM

## Get started with the OPPE VM

- Your OPPE questions can be found at the directory `/opt/se2001/<assignment_name>/`

- Your solution has to be present in directory `~/se2001/<assignment name>/`

- You can use `synchro show` inside `~/se2001/<assignment name>/` to see the question problem statement.

- Once you have completed the question specified in the `/opt/se2001/<assignment_name>/README.md`, you have to run `synchro eval` from the respective question directory `~/se2001/<assignment name>/`

- If you get the below output, your code is passed and your submission is recorded.

```
Evaluation Successful.
Submission Successful.
```

- Other useful packages installed
  - `tmux` a terminal multiplexer useful in splitting the terminal, recover your terminal session even when you disconnected from VM.
  - `batcat` a rust based alternative to `cat` that will display the file contents with color.
