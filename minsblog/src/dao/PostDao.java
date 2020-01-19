package dao;

import vo.Post;

import java.util.HashMap;
import java.util.List;

public interface PostDao {

  List<Post> selectList() throws Exception;
  int selectOne(int id) throws Exception;
  int insert(Post post) throws Exception;
  int update(Post post) throws Exception;
  int delete(int id) throws Exception;

}
