#!/bin/bash

# Check if repository name is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <github-username>"
    exit 1
fi

USERNAME=$1
REPO="${USERNAME}.github.io"

# Create directory structure
mkdir -p $REPO/_posts

# Create _config.yml
cat > $REPO/_config.yml << EOL
title: ${USERNAME}'s Blog
description: >- 
  Write your blog description here.
baseurl: ""
url: "https://${USERNAME}.github.io"

theme: minima
plugins:
  - jekyll-feed
  - jekyll-seo-tag
EOL

# Create sample post
TODAY=$(date +%Y-%m-%d)
cat > $REPO/_posts/${TODAY}-welcome.md << 'EOL'
---
layout: post
title: "Welcome to My Blog"
date: CURRENT_DATE
---

# Welcome to my blog!

This is my first post using Jekyll. Writing in Markdown is super easy!

## Code Example

```python
def hello_world():
    print("Hello, blog readers!")
```

## Markdown Features

### Lists
- Easy bullet points
- *Italic text*
- **Bold text**

### Links
[Jekyll's documentation](https://jekyllrb.com/docs/)
EOL

# Replace CURRENT_DATE with actual date and time
sed -i "s/CURRENT_DATE/$(date +'%Y-%m-%d %H:%M:%S %z')/" $REPO/_posts/${TODAY}-welcome.md

# Create about page
cat > $REPO/about.md << 'EOL'
---
layout: page
title: About
permalink: /about/
---

This is my blog where I write about things I find interesting.
EOL

# Create README
cat > $REPO/README.md << EOL
# ${USERNAME}.github.io

My personal blog built with Jekyll.

## Writing Posts

1. Create a new file in \`_posts/\` with the format: \`YYYY-MM-DD-title.md\`
2. Add the frontmatter:
   \`\`\`yaml
   ---
   layout: post
   title: "Your Post Title"
   date: YYYY-MM-DD HH:MM:SS +/-TTTT
   ---
   \`\`\`
3. Write your content in Markdown
4. Commit and push to GitHub
EOL

# Create .gitignore
cat > $REPO/.gitignore << 'EOL'
_site
.sass-cache
.jekyll-cache
.jekyll-metadata
vendor
EOL

# Initialize git repository
cd $REPO
git init
git add .
git commit -m "Initial Jekyll blog setup"

echo "Jekyll blog repository created at: $REPO"
echo ""
echo "Next steps:"
echo "1. Create a new repository on GitHub named: $REPO"
echo "2. Push this repository to GitHub:"
echo "   git remote add origin https://github.com/$USERNAME/$REPO.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo ""
echo "That's it! Your blog will be available at: https://$USERNAME.github.io"
echo ""
echo "To write a new post:"
echo "1. Create a file in _posts/ with format: YYYY-MM-DD-title.md"
echo "2. Add frontmatter and write in Markdown"
echo "3. Commit and push to GitHub"