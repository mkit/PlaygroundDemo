package
{
	import pathfinder.Node;
	
	import robots.knowledge.CrossingKnwoledge;
	import robots.knowledge.RobotKnowledge;

	public class CrossingRules
	{
		public static function enterCrossing(rk:RobotKnowledge):Boolean {
			var rightEntryIndex:int = getRightEntryIndex(rk.crossingKnowledge, rk.path.getItemAt(0) as Node);
			if (rightEntryIndex > -1) {//right side rule
				var rCrossingPathLength:int = rk.crossingKnowledge.getCrossingPath(rk.path).length;
				if (rCrossingPathLength == 4) {
					var rEntryIndex:int = rk.crossingKnowledge.entries.indexOf(rk.path.getItemAt(0));
					for (var i:int = 0; i < rk.crossingKnowledge.entries.length; i++) {
						if (i != rightEntryIndex && i != rEntryIndex) {
							if (rk.crossingKnowledge.entriesOcupancy[i].length < 4) //is other go forward or turn its right;
								return false;
						}
					}
					return true;
				} else {//I dont want to turn left
					return (rk.crossingKnowledge.entriesOcupancy[rightEntryIndex].length == 0 // none on my right side
						|| rCrossingPathLength == 2
						|| rk.crossingKnowledge.entriesOcupancy[rightEntryIndex].length == 4); // there is someone willing to turn left
				}
			}
			return false;
		}
		
		private static function getRightEntryIndex(ck:CrossingKnwoledge, entry:Node):int {
			var index:int = ck.entries.indexOf(entry);
			if (index > -1) {
				switch (index) {
					case 0: return 2;
					case 1: return 0;
					case 2: return 3;
					case 3: return 1;
				}
			}
			return -1;
		}
		
	}
}