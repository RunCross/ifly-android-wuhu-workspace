import org.apache.commons.codec.binary.Base64;


public class test111 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String ss="q11111111111111111111";
		byte[] ssbytes=Base64.encodeBase64(ss.getBytes());
		String baseStr=new String(ssbytes);
		System.out.println(baseStr);
		byte[] neworgByte=Base64.decodeBase64(baseStr);
		String newbyteStr=new String(neworgByte);
		System.out.println(newbyteStr);
		
		
		
	}

}
