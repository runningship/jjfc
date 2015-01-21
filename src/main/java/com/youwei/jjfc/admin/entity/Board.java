package com.youwei.jjfc.admin.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.bc.sdak.SimpDaoTool;

@Entity
public class Board {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer id;
	
	public String name;
	
	public String fname;
	
	public Integer fid;
	
	public Integer orderx;
	
	//1 有子栏目，0没有子栏目
	public Integer type;
	
	//没有子栏目的栏目要有栏目内容
	public String conts;
	
	public List<Board> getChildren(){
		List<Board> list = SimpDaoTool.getGlobalCommonDaoService().listByParams(Board.class, "from Board where fid=? order by orderx" ,id);
		return list;
	}
}
