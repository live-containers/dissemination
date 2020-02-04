+ Maybe interacting with the Docker cli is too high level.
+ It seems that most of the logic lies in `containerd` also via `runc` which actually implements the command execution.
+ In particular, it is recommended to interact with the `runc` directly as it includes many of the interesting features (iterative/diskless migration) [see here](https://github.com/checkpoint-restore/criu/issues/872).
