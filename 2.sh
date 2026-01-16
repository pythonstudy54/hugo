#!/bin/bash

echo "🚨 WARNING: This will DELETE last 2 commits from GitHub!"
read -p "Are you sure? (yes/no): " confirm

if [ "$confirm" != "yes" ]; then
  echo "❌ Operation cancelled"
  exit 1
fi

echo "🔄 Resetting last 2 commits..."
git reset --hard HEAD~2

echo "🚀 Force pushing to origin main..."
git push origin main --force

echo "✅ Last 2 commits removed successfully!"