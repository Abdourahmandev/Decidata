#!/bin/bash

# Decidata Build Script for Render
echo "Starting Decidata website build..."

# Ensure all dependencies are installed
echo "Installing dependencies..."
npm install

# Since this is a static website, no build process is needed
# Just ensure all files are in place
echo "Validating website files..."

if [ -f "index.html" ]; then
    echo "✓ index.html found"
else
    echo "✗ index.html not found"
    exit 1
fi

if [ -d "css" ]; then
    echo "✓ CSS directory found"
else
    echo "✗ CSS directory not found"
    exit 1
fi

if [ -d "js" ]; then
    echo "✓ JS directory found"
else
    echo "✗ JS directory not found"
    exit 1
fi

if [ -d "images" ]; then
    echo "✓ Images directory found"
else
    echo "✗ Images directory not found"
    exit 1
fi

echo "✅ Decidata website build completed successfully!"
echo "🚀 Ready for deployment on Render"
