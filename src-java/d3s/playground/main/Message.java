package d3s.playground.main;

import d3s.knowledges.Knowledge;

public class Message {
	private String message;
	private Knowledge messageBody;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Knowledge getMessageBody() {
		return messageBody;
	}
	public void setMessageBody(Knowledge messageBody) {
		this.messageBody = messageBody;
	}

	
}
