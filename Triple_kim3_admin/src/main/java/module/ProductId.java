package module;

import java.util.StringTokenizer;

public class ProductId {
	public static String generatePid(String logi_id, String logi_pid) {
		return "p" + parseStr(logi_id) + logi_pid + ((int)(Math.random() * 89999999) + 10000000);
	}
	
	public static StringBuilder parseStr(String logi_id) {
		StringTokenizer parsedLogi_id = new StringTokenizer(logi_id, "-"); 
		
		StringBuilder sb = new StringBuilder();
		
		while(parsedLogi_id.hasMoreTokens()) {
			sb.append(parsedLogi_id.nextToken());
		}
		return sb;
	}
}
