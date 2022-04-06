package service;

public class ActionForward {

	private boolean redirect;		//포워딩 방식 (디스패치드=false, 리다이렉트=true) 설정
	private String path;				//포워딩 페이지명 설정
	
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
}
