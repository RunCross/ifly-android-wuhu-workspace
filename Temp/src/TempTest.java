import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class TempTest {

	/**
	 * @param args
	 * @throws UnsupportedEncodingException
	 */
	public static void main(String[] args) throws UnsupportedEncodingException {
		int a = '1';
		System.out.println(new String(
				"\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000"
						.getBytes(), "gbk"));
		// URLEncoder.en
		System.out.println(URLEncoder.encode("paatform\\?ver='11.00.3801'"));
		System.out
				.println(URLDecoder
						.decode("\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000"));
		System.out.println(URLDecoder.decode("%84%A8%01%A3%A9"));
		String[] s = { "204", "250", "001", "243", "251" };
		String st = new String();
		for (int i = 0; i < s.length; i++) {
			st = st+"%"+Integer.toHexString(Integer.valueOf(s[i], 8)).toString();
			System.out.println(Integer.toHexString(Integer.valueOf(s[i], 8)));
		}
		System.out.println(st);
		System.out.println((char)204);
		System.out.println((char)250);
		System.out.println((char)001);
		System.out.println((char)251);
		System.out.println((char)245);
		System.out.println((char)240);
	}

}
