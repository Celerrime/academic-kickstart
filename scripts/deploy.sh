#!/bin/bash
#
# deploy - script to build project files, commit changes to github and push to repo

echo -e "\033[0;32mStarting process to update mcastorillo.com blog...\033[0m"
echo -e " =============================================="

# Build project
echo -e "Building static website files ... "
hugo && {
    echo -e "Sycing to folder"
    # Sync public directory to remote server, deleting files that don't occur locally
    rsync -Pravtz --delete public/ blog:/var/www/mcastorillo.com/
}

git add -A
git commit -m "AUTOMATED DEPLOY: synced blog on $(date)"
echo -e "Done. Check updates at https://mcastorillo.com"

