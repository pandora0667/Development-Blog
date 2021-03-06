package controls;

import annotation.Component;
import bind.DataBinding;
import dao.PostgresSqlCategoryDao;
import vo.Category;

import java.util.Map;

@Component("/category/delete.do")
public class CategoryDeleteController implements DataBinding, Controller {

  PostgresSqlCategoryDao categoryDao;

  public void setCategoryDao(PostgresSqlCategoryDao categoryDao) {
    this.categoryDao = categoryDao;
  }

  @Override
  public Object[] getDataBinders() {
    return new Object[] {
        "category", Category.class
    };
  }

  @Override
  public String execute(Map<String, Object> model) throws Exception {
    Category category = (Category) model.get("category");
    categoryDao.delete(category);
    return "redirect:/category/list.do?cid=Main";
  }
}
