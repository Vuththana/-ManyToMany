package goros.jpa.entity;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "posts")
public class Post {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    public UUID postId;

    public String name;

    @ManyToMany
    @JoinTable(name = "posts_comments", joinColumns = @JoinColumn(name="post_id"), inverseJoinColumns = @JoinColumn(name="comment_id"))
    @JsonManagedReference
    public Set<Comment> comment;
}
