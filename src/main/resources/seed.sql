-- 1. Insert seed posts (post_id, name)
INSERT INTO posts (post_id, name) VALUES
                                      ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Post Alpha'),
                                      ('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'Post Beta');

-- 2. Insert seed comments (comment_id, comment)
INSERT INTO comments (comment_id, comment) VALUES
                                               ('c1eebc99-9c0b-4ef8-bb6d-6bb9bd380a01', 'First test comment'),
                                               ('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a02', 'Second test comment'),
                                               ('c3eebc99-9c0b-4ef8-bb6d-6bb9bd380a03', 'Third test comment');

-- 3. Link them in posts_comments
INSERT INTO posts_comments (post_id, comment_id) VALUES
                                                     ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'c1eebc99-9c0b-4ef8-bb6d-6bb9bd380a01'),
                                                     ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a02'),
                                                     ('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', 'c3eebc99-9c0b-4ef8-bb6d-6bb9bd380a03');