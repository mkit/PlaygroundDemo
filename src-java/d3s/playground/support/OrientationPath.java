package d3s.playground.support;

import java.util.LinkedList;

public class OrientationPath {
	private LinkedList<EnumOrientation> path;
	
	public OrientationPath(LinkedList<EnumOrientation> path) {
		this.path = path;
	}
	
	public EnumOrientation getNextDirection() {
		if (path != null)
			return path.pollFirst();
		return null;
	}
}
