#!/usr/bin/env bash

set -e

echo "🔧 Running deployment pipeline..."

# 1. Optional build step for Node.js
# npm run build  # Uncomment if needed

# 2. Tagging (skip if triggered by tag already)
# git tag v$(date +'%Y.%m.%d') && git push --tags

# 3. Changelog (optional)
# npx standard-version --release-as minor

# 4. Deployment
ansible-playbook -i ansible/inventory.ini ansible/deploy.yml

echo "✅ Deployment finished."
