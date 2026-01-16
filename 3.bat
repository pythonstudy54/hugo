#!/bin/bash

echo "🔍 Showing Git reflog (recent history)..."
git reflog

echo ""
read -p "📝 Enter the reflog commit ID to restore (example: abc1234): " commitid

if [ -z "$commitid" ]; then
  echo "❌ No commit ID entered"
  exit 1
fi

echo "🔄 Restoring repository to commit: $commitid"
git reset --hard $commitid

echo "🚀 Pushing restored commits to GitHub..."
git push origin main --force

echo "✅ ALL deleted commits restored successfully!"