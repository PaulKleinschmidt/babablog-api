## babaBlog Rails API
babaBlog is a blog web app for users to make posts and comment on other people's posts
This is the backend repo for the babBlog client found here:
https://github.com/PaulKleinschmidt/babablog

This branch includes the 'like' feature. Users can like and unlike posts

ERD: https://imgur.com/KcjuJkl
backend deployed: https://quiet-stream-81739.herokuapp.com/
client deployed: https://paulkleinschmidt.github.io/babablog/#/posts

### Endpoints

All resources have full CRUD functionality

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| GET    | `/posts`               | `posts#index`     |
| GET    | `/post/:id`            | `posts#show`      |
| PATCH  | `/comments/`           | `comments#index`  |
| GET    | `/likes`               |  `likes#index`    |



## Likes

The likes feature is currently working in this branch. Users can incriment the like counter next to a post on the /posts route. It still needs tweaking, as I could not find a good way to hide the like button once a user likes a post. This was the biggest struggle when building this feature. I opened a thread on StackOverflow, and was stuck for a little while on validating if a user had already liked a post. While I didn't end up using either, I learned more about javascript localStorage and Ember computed properties. In the end, I used css properties to hide the button. It's not perfect yet but it works.

## How Its Made

babaBlog is my first project using Ember.js. I started by building the api on rails. After adding a new resource, I set up the components and routes needed on the front end. I followed the data down, action up process to make my changes on the front end persist to the database. I divided my views up into components as much as possible. After completing the first resource, I added the comments resource so that users could comment on posts.

## Whats Next?

I have been working on a likes resource that I hope to have done in the future. I have added a likes table in my SQL database. Next step is diplpaying the view in my Ember client. Additionally, I would like users to be able to like posts and comments. I would also like to have a way of sorting posts

## User Stories

As a user, I want to be able to sign up, in, and out
As a user, I want to be able to post something on the blog
As a user, I want to be able to comment on a post
As a user, I want to see the emails of who is posting
As a user, I want to update and delete my posts
