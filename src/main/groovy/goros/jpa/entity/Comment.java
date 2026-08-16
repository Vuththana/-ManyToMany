package goros.jpa.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "comments")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    public UUID commentId;

    public String comment;

    @ManyToMany
    @JoinTable(name = "posts_comments", joinColumns = @JoinColumn(name="comment_id"), inverseJoinColumns = @JoinColumn(name="post_id"))
    @JsonBackReference
    public Set<Post> post;
}
