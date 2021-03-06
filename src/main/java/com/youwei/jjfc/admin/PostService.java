package com.youwei.jjfc.admin;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.bc.sdak.CommonDaoService;
import org.bc.sdak.GException;
import org.bc.sdak.Page;
import org.bc.sdak.TransactionalServiceHelper;
import org.bc.web.ModelAndView;
import org.bc.web.Module;
import org.bc.web.PlatformExceptionType;
import org.bc.web.WebMethod;

import com.youwei.jjfc.admin.entity.Board;
import com.youwei.jjfc.admin.entity.Post;
import com.youwei.jjfc.util.JSONHelper;

@Module(name="/admin/post")
public class PostService {
	CommonDaoService dao = TransactionalServiceHelper.getTransactionalService(CommonDaoService.class);
	
	@WebMethod
	public ModelAndView listData(Page<Map> page ,String lanmu, String title){
		ModelAndView mv = new ModelAndView();
		List<Object> params = new ArrayList<Object>();
		page.setPageSize(25);
		StringBuilder hql = new StringBuilder("select b.name as bname, p.id as id , p.title as title , p.orderx as orderx from Post p, Board b  where b.id=p.bid ");
		if(StringUtils.isNotEmpty(title)){
			hql.append(" and p.title like ?");
			params.add("%"+title+"%");
		}
		if(StringUtils.isNotEmpty(lanmu)){
			hql.append(" and b.name like ?");
			params.add("%"+lanmu+"%");
		}
		page = dao.findPage(page, hql.toString(), true, params.toArray());
		page.orderBy="p.addtime";
		page.order = "desc";
		mv.data = JSONHelper.toJSON(page);
		return mv;
	}
	
	@WebMethod
	public ModelAndView add(){
		ModelAndView mv = new ModelAndView();
		List<Board> modules = dao.listByParams(Board.class, "from Board where fid is null or fid=0 order by orderx");
		mv.jspData.put("modules", modules);
		return mv;
	}
	
	@WebMethod
	public ModelAndView save(Post post){
		ModelAndView mv = new ModelAndView();
		if(post.bid==null){
			throw new GException(PlatformExceptionType.BusinessException,"请先选择栏目");
		}
		post.addtime = new Date();
		post.updatetime = new Date();
		dao.saveOrUpdate(post);
		return mv;
	}
	
	@WebMethod
	public ModelAndView update(Post post){
		ModelAndView mv = new ModelAndView();
		Post po = dao.get(Post.class, post.id);
		if(po!=null){
			po.title = post.title;
			po.bid = post.bid;
			po.updatetime = new Date();
			po.conts = post.conts;
			dao.saveOrUpdate(po);
		}
		return mv;
	}
	
	@WebMethod
	public ModelAndView edit(int id){
		ModelAndView mv = new ModelAndView();
		List<Board> modules = dao.listByParams(Board.class, "from Board where fid is null or fid=0 order by orderx");
		mv.jspData.put("modules", modules);
		Post po = dao.get(Post.class, id);
		Board board = dao.get(Board.class, po.bid);
		mv.jspData.put("moduleId", board.fid);
		mv.jspData.put("post", po);
		return mv;
	}
	
	@WebMethod
	public ModelAndView view(int id){
		ModelAndView mv = new ModelAndView();
		Post po = dao.get(Post.class, id);
		mv.jspData.put("post", po);
		return mv;
	}
	
	@WebMethod
	public ModelAndView delete(int id){
		ModelAndView mv = new ModelAndView();
		Post po = dao.get(Post.class, id);
		if(po!=null){
			dao.delete(po);
		}
		return mv;
	}
}
