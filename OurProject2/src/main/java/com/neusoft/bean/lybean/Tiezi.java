package com.neusoft.bean.lybean;

public class Tiezi {
	private Integer tieziid;
	private Integer uid;
	private String title;
	private String content;
	private String createtime;
	private Integer view_num;
	private Integer startindex;
	private Integer pagesize;
	private Integer fenleiid;
	private UserInfo userInfo;
	private ImgInfo imgInfo;
	private TieziType tieziType;
	private TopicInfo topicInfo;
	private LoveInfo loveInfo;

	public Integer getTieziid() {
		return tieziid;
	}

	public void setTieziid(Integer tieziid) {
		this.tieziid = tieziid;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public Integer getView_num() {
		return view_num;
	}

	public void setView_num(Integer view_num) {
		this.view_num = view_num;
	}

	public Integer getStartindex() {
		return startindex;
	}

	public void setStartindex(Integer startindex) {
		this.startindex = startindex;
	}

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public Integer getFenleiid() {
		return fenleiid;
	}

	public void setFenleiid(Integer fenleiid) {
		this.fenleiid = fenleiid;
	}

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public ImgInfo getImgInfo() {
		return imgInfo;
	}

	public void setImgInfo(ImgInfo imgInfo) {
		this.imgInfo = imgInfo;
	}

	public TieziType getTieziType() {
		return tieziType;
	}

	public void setTieziType(TieziType tieziType) {
		this.tieziType = tieziType;
	}

	public TopicInfo getTopicInfo() {
		return topicInfo;
	}

	public void setTopicInfo(TopicInfo topicInfo) {
		this.topicInfo = topicInfo;
	}

	public LoveInfo getLoveInfo() {
		return loveInfo;
	}

	public void setLoveInfo(LoveInfo loveInfo) {
		this.loveInfo = loveInfo;
	}

}
