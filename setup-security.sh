#!/bin/bash

echo "🔒 LibreChat Security Setup & Credential Rotation Guide"
echo "======================================================="
echo ""

echo "⚠️  IMMEDIATE ACTION REQUIRED: Your MongoDB credentials were exposed!"
echo ""
echo "📋 Step-by-Step Security Plan:"
echo ""

echo "1️⃣ ROTATE MONGODB ATLAS CREDENTIALS (DO THIS FIRST!)"
echo "   → Go to MongoDB Atlas Dashboard"
echo "   → Database Access → Database Users"
echo "   → Click 'Edit' next to user 'yemi'"
echo "   → Change password to a new strong password"
echo "   → Click 'Update User'"
echo ""

echo "2️⃣ UPDATE LOCAL CONFIGURATION"
echo "   → Update your .env file with the new credentials"
echo "   → Update docker-compose.local.yml with new credentials"
echo "   → Test the connection works"
echo ""

echo "3️⃣ RESTART DOCKER CONTAINERS"
echo "   → Run: docker compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.local.yml up -d --force-recreate"
echo ""

echo "4️⃣ VERIFY SECURITY HOOKS ARE ACTIVE"
echo "   → Pre-commit hooks installed: ✅"
echo "   → Git-secrets configured: ✅"
echo "   → MongoDB URI detection: ✅"
echo ""

echo "5️⃣ TEST THE SECURITY SYSTEM"
echo "   → Try committing a file with 'AKIA' (fake AWS key)"
echo "   → It should be blocked by the hooks"
echo ""

echo "🔒 Files that are now protected from being committed:"
echo "   • .env files"
echo "   • AWS credentials"
echo "   • Private keys"
echo "   • MongoDB connection strings"
echo "   • Other secrets and sensitive data"
echo ""

echo "💡 Usage going forward:"
echo "   • Always use: docker compose -f docker-compose.yml -f docker-compose.override.yml -f docker-compose.local.yml up -d"
echo "   • Keep sensitive data in gitignored files only"
echo "   • The pre-commit hooks will automatically scan before each commit"
echo ""

echo "🚫 IMPORTANT: If you had MongoDB credentials exposed, rotate them immediately!"
echo "   → Change the database user password in MongoDB Atlas"
echo "   → Update your local .env and docker-compose.local.yml files"
echo ""

echo "✅ Once you've rotated the credentials, your system will be secure!"
