package com.neusoft.bean.lybean;

import java.util.Date;

public class TopicInfo {
	private int id;
	private int uid;
	private int tieziid;
	private String content;
	private Date createtime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getTieziid() {
		return tieziid;
	}

	public void setTieziid(int tieziid) {
		this.tieziid = tieziid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}
