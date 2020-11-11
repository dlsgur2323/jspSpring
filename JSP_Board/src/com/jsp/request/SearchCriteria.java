package com.jsp.request;

public class SearchCriteria {
	private int page =1;
	private int perPageNum = 10;
	private String searchType ="";
	private String keyword="";
	
	public SearchCriteria() {}
	
	public SearchCriteria(int page, int perPageNum, String searchType, String keyword) {
		super();
		this.page = page;
		this.perPageNum = perPageNum;
		this.searchType = searchType;
		this.keyword = keyword;
	}



	public SearchCriteria(String page, String perPageNum, String searchType, String keyword) {
		super();
		if(page!=null && !page.isEmpty())this.page = Integer.parseInt(page);
		if(perPageNum!=null && !perPageNum.isEmpty())this.perPageNum = Integer.parseInt(perPageNum);
		if(searchType!=null)this.searchType = searchType;
		if(keyword!=null)this.keyword = keyword;
	}
	
	public int getPageStartRowNum() {
		return (this.page-1)*perPageNum;
		
	}
	
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setPage(String page) {
		if(page!=null && !page.isEmpty())
			this.page = Integer.parseInt(page);
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		this.perPageNum = perPageNum;
	}
	public void setPerPageNum(String perPageNum) {
		if(perPageNum!=null && !perPageNum.isEmpty())
			this.perPageNum = Integer.parseInt(perPageNum);
	}
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	
}
