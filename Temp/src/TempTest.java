import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class TempTest {

	/**
	 * @param args
	 * @throws UnsupportedEncodingException
	 */
	public static void main(String[] args) throws UnsupportedEncodingException {
//		int a = '1';
		System.out.println(new String(
				"\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000"
						.getBytes(), "ISO-2022-JP"));
//		// URLEncoder.en
//		System.out.println(URLEncoder.encode("paatform\\?ver='11.00.3801'"));
//		System.out
//				.println(URLDecoder
//						.decode("\204\250platform\001\243ver\2511.00.3801\245UsrID\240\246TimeID\000"));
//		System.out.println(URLDecoder.decode("%84%A8%01%A3%A9"));
//		String[] s = { "204", "250", "001", "243", "251" };
//		String st = new String();
//		for (int i = 0; i < s.length; i++) {
//			st = st+"%"+Integer.toHexString(Integer.valueOf(s[i], 8)).toString();
//			System.out.println(Integer.toHexString(Integer.valueOf(s[i], 8)));
//		}
//		System.out.println(st);
//		System.out.println((char)204);
//		System.out.println((char)250);
//		System.out.println((char)001);
//		System.out.println((char)251);
//		System.out.println((char)245);
//		System.out.println((char)240);
//		String hexString = "83a8757365724e616d65a3416f69a55573724944a0a654696d65494400";
//		System.out.println(hexString2binaryString(hexString));
		
//		String rawst = "1000001110101000011101010111001101100101011100100100111001100001011011010110010110100011010000010110111101101001101001010101010101110011011100100100100101000100101000001010011001010100011010010110110101100101010010010100010000000000";
//		byte[] raw = new byte[rawst.length()];
//		for(int i=0;i<rawst.length();i++){
//			
//			String temp  = rawst.substring(i, i+1);
//			raw[i] = Byte.valueOf(temp);
//		System.out.print(raw[i]);	
//		}
//		String sst = String.valueOf(0);
		
	}

		public static String hexString2binaryString(String hexString)
		{
			if (hexString == null || hexString.length() % 2 != 0)
				return null;
			String bString = "", tmp;
			for (int i = 0; i < hexString.length(); i++)
			{
				tmp = "0000"
						+ Integer.toBinaryString(Integer.parseInt(hexString
								.substring(i, i + 1), 16));
				bString += tmp.substring(tmp.length() - 4);
			}
			return bString;
		}
	

}
