/**
 * Generated by Gas3 v2.3.1 (Granite Data Services).
 *
 * NOTE: this file is only generated if it does not exist. You may safely put
 * your custom code here.
 */

package d3s.playground.knowledges {
	import d3s.knowledges.Knowledge;
	import d3s.playground.vos.Playground;
	
	import mx.collections.ArrayCollection;

    [Bindable]
    [RemoteClass(alias="d3s.playground.knowledges.PlaygroundKnowledge")]
    public class PlaygroundKnowledge extends Knowledge {
		public var playground:Playground = null;
		public var crossings:ArrayCollection = null;
		public var robots:ArrayCollection = null;
    }
}