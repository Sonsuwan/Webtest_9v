<%@ page contentType="text/html; charset=euc-kr" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URL" %>
<html>
<head><title>기본 객체 사용하여 자원 읽기 2</title></head>
<body>
	<%
		String resourcePath="july 7/notice/notice.txt";
		
		BufferedReader br = null;
		char[] buff = new char[512];
		int len = -1;
		
		try{
			URL url = application.getResource(resourcePath);
			
			br = new BufferedReader(
				new InputStreamReader(
				url.openStream() ));
				while (( len = br.read(buff)) != -1) {
				out.print(new String(buff, 0, len));
				}
				} catch(IOException ex) {
				out.println("예외 발생 : " + ex.getMessage());
				} finally {
				if (br != null) try { br.close();} catch(IOException ex) {}
				}%>
</body>
</html>