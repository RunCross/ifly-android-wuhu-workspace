package walker;

public class Version {
	private static String month = "9";
	private static String date = "28";
	private static String release = "test";
	private static String copyright = "2013©wjsjwr.org";
	private static String code = "Crudity";

	public static String printVersion() {
		return String
				.format("MAWalker(java) version: %s.%s-%s\nCopyright: %s, %s\n"
						+ "Enhanced version by MengHang⑨.\n"
						+ "Please use this with new configuration xml file provided.",
						month, date, release, code, copyright);
	}
}
