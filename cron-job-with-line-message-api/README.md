1. Modify the permission of the `broadcastMessage.sh` file
    ```sbtshell
    chmod 755 {filePath}/broadcastMessage.sh
    ```

2. Modify the crontab
    ```sbtshell
    crontab -e
    0 7 * * * {filePath}/broadcastMessage.sh
    ```