# Winecraft.Dev website
Here's the website I host at [winecraft.dev](winecraft.dev).

## Quick Development Instructions
Backend is written in Golang, Frontend is written in JS. Run both
while developing.

### Frontend
To run the frontend, navigate to `frontend/`:

    export REACT_APP_API=http://localhost:8080
    npm start

### Backend
To run the backend:

    export PORT=8080
    export POSTS_PATH=blog-posts/
    go run main.go

## Writing Blog Posts
All blog posts can be written into `blog-posts/` using the markdown format.
The name of the file preceding the `.md` suffix will become the URL for the
post. The first 3 lines of the Markdown post are processed by the backend 
and must provide the following metadata.

    The Title
    A description of the post
    1770064953 //unix epoch time

The contents of the post must be written on the successive lines.
