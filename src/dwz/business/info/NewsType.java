package dwz.business.info;

public enum NewsType {
	NEWS("新闻动态"), ANNOUNCEMENT("通知");
	private final String value;

	NewsType(String value) {
		this.value = value;
	}

	public String getId() {
		return this.toString();
	}

	public String getName() {
		return value;
	}
}
