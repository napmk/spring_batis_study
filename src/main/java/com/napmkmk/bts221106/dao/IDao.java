package com.napmkmk.bts221106.dao;

import java.util.ArrayList;

import com.napmkmk.bts221106.dto.ContentDto;

public interface IDao {
	public ArrayList<ContentDto> listDao();
	public void writeDao( String bname, String btitle, String bcontent);
	public void deleteDao(String bid);
	public ContentDto content_view_Dao(String bid);
	public void modifyDao(String bid, String bname, String btitle, String bcontent);
	public ContentDto mviewDao(String bid);
	public void replyDao( String bname, String btitle, String bcontent,String bgroup,String bstep, String bindent);
}
