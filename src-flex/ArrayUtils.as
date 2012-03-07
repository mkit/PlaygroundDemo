package
{
	public class ArrayUtils
	{
		public static function equals(a:Array, b:Array):Boolean {
			if (a == null && b == null)
				return true;
			else if (a && b && a.length == b.length){
				for each (var e:Object in a) {
					if (b.indexOf(e) < 0)
						return false;
				}
				return true;
			} else {
				return false;
			}
		}
	}
}