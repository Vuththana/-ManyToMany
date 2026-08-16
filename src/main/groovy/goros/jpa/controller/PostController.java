package goros.jpa.controller;

import goros.jpa.entity.Post;
import goros.jpa.service.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1")
public class PostController {
    private final PostService postService;
    @GetMapping("/")
    public List<Post> getAllPosts() {
        return postService.getAllPosts();
    }
}
