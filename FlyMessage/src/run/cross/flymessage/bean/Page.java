package run.cross.flymessage.bean;

import java.util.List;

/**
 * 页类，包含项目
 * @author RunCross
 *
 */
public class Page {

	// 各个属性名意义不明
	private int FirstPage;
	private int PrevPage;
	private int NextPage;
	private int Lastpage;
	private int AllRecordCount;
	private int ThisPageRecordCount;
	private int PageSize;
	private int PageCount;
	private int IndexPage;
	private boolean CanFirstPage;
	private boolean CanPrevPage;
	private boolean CanNextPage;
	private boolean CanLastPage;
	private List<Project> Content;
	public int getFirstPage() {
		return FirstPage;
	}
	public void setFirstPage(int firstPage) {
		FirstPage = firstPage;
	}
	public int getPrevPage() {
		return PrevPage;
	}
	public void setPrevPage(int prevPage) {
		PrevPage = prevPage;
	}
	public int getNextPage() {
		return NextPage;
	}
	public void setNextPage(int nextPage) {
		NextPage = nextPage;
	}
	public int getLastpage() {
		return Lastpage;
	}
	public void setLastpage(int lastpage) {
		Lastpage = lastpage;
	}
	public int getAllRecordCount() {
		return AllRecordCount;
	}
	public void setAllRecordCount(int allRecordCount) {
		AllRecordCount = allRecordCount;
	}
	public int getThisPageRecordCount() {
		return ThisPageRecordCount;
	}
	public void setThisPageRecordCount(int thisPageRecordCount) {
		ThisPageRecordCount = thisPageRecordCount;
	}
	public int getPageSize() {
		return PageSize;
	}
	public void setPageSize(int pageSize) {
		PageSize = pageSize;
	}
	public int getPageCount() {
		return PageCount;
	}
	public void setPageCount(int pageCount) {
		PageCount = pageCount;
	}
	public int getIndexPage() {
		return IndexPage;
	}
	public void setIndexPage(int indexPage) {
		IndexPage = indexPage;
	}
	public boolean isCanFirstPage() {
		return CanFirstPage;
	}
	public void setCanFirstPage(boolean canFirstPage) {
		CanFirstPage = canFirstPage;
	}
	public boolean isCanPrevPage() {
		return CanPrevPage;
	}
	public void setCanPrevPage(boolean canPrevPage) {
		CanPrevPage = canPrevPage;
	}
	public boolean isCanNextPage() {
		return CanNextPage;
	}
	public void setCanNextPage(boolean canNextPage) {
		CanNextPage = canNextPage;
	}
	public boolean isCanLastPage() {
		return CanLastPage;
	}
	public void setCanLastPage(boolean canLastPage) {
		CanLastPage = canLastPage;
	}
	public List<Project> getContent() {
		return Content;
	}
	public void setContent(List<Project> content) {
		Content = content;
	}
		
	
}
