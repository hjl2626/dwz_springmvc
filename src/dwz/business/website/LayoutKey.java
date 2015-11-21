package dwz.business.website;

import java.io.Serializable;

public class LayoutKey implements Serializable, Comparable<LayoutKey> {
	private static final long serialVersionUID = 3864402891171382946L;

	private String layoutName = null;

	private int index = 0;

	public LayoutKey(String layoutName) {
		this.layoutName = layoutName;
	}

	public LayoutKey(String layoutName, int index) {
		this.layoutName = layoutName;
		this.index = index;
	}

	public Serializable getValue() {
		return new Object[] { this.layoutName };
	}

	public int compareTo(LayoutKey o) {
		if (o != null && o instanceof LayoutKey) {
			LayoutKey key = (LayoutKey) o;
			if (this.index > key.index)
				return 1;
			else if (this.index < key.index)
				return -1;
			else {
				if (this.hashCode() > o.hashCode())
					return 1;
				if (this.hashCode() < o.hashCode())
					return -1;
			}
		}
		return 0;
	}

	@Override
	public boolean equals(Object o) {
		if (o == null) {
			return false;
		}

		if (this == o) {
			return true;
		}

		if (this.hashCode() == o.hashCode()) {
			return true;
		}

		if (o instanceof LayoutKey) {
			LayoutKey key = (LayoutKey) o;
			if (this.layoutName.equals(key.layoutName)) {
				return true;
			}
		}

		return false;
	}

	@Override
	public int hashCode() {
		return this.layoutName.hashCode();
	}
}
