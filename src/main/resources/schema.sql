CREATE TABLE posts(
    post_id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE comments(
    comment_id UUID PRIMARY KEY,
    comment TEXT NOT NULL
);

CREATE TABLE posts_comments (
    post_id UUID NOT NULL,
    comment_id UUID NOT NULL,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id) ON DELETE CASCADE,
    PRIMARY KEY(post_id, comment_id)
)