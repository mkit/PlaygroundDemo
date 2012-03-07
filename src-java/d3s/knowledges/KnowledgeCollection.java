package d3s.knowledges;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;

public class KnowledgeCollection <T> implements Serializable {
	private LinkedList<T> knowledges;
	
	public KnowledgeCollection() {
		knowledges = new LinkedList<T>();
	}
	
	public KnowledgeCollection(Collection collection) {
		knowledges = new LinkedList<T>(collection);
	}
	
	public void addKnowledge(T knowledge) {
		int index = knowledges.indexOf(knowledge);
		if (index < 0) {
			knowledges.push(knowledge);
		} else {
			knowledges.set(index, knowledge);
		}
	}
	
	public void addKnowledges(KnowledgeCollection<T> knowledges) {
		for (T k: knowledges.getKnowledges()) {
			this.addKnowledge(k);
		}
	}
	
	public void addKnowledges(Collection<T> knowledges) {
		if (knowledges != null)
			for (T k: knowledges) {
				this.addKnowledge(k);
			}
	}
	
	public Boolean removeKnowledge(T knowledge) {
		return knowledges.removeFirstOccurrence(knowledge);
	}
	
	public LinkedList<T> getKnowledges() {
		return knowledges;
	}
	
	public void setKnowledges(LinkedList<T> value) {
		this.knowledges = value;
	}
	
	public Iterator<T> getKnowledgeIterator() {
		return knowledges.iterator();
	}
	
	public int size() {
		return knowledges.size();
	}
	
	public T getKnowledgeAt(int index) {
		if (index > -1 && index < size()) {
			return knowledges.get(index);
		}
		return null;
	}
	
	public String toString() {
		String result = "[ ";
		for (T k: knowledges)
			result += k.toString() + ", ";
		result += " ]";
		return result;
	}
}
