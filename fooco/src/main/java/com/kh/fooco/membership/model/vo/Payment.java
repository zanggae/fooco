package com.kh.fooco.membership.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Payment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6676325944457178379L;

	private int paymentId;		//결제번호
	private Date paymentDate; 	//결제날짜
	
	public Payment() {
	}

	public Payment(int paymentId, Date paymentDate) {
		super();
		this.paymentId = paymentId;
		this.paymentDate = paymentDate;
	}

	public int getPaymentId() {
		return paymentId;
	}

	public void setPaymentId(int paymentId) {
		this.paymentId = paymentId;
	}

	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	@Override
	public String toString() {
		return "Payment [paymentId=" + paymentId + ", paymentDate=" + paymentDate + "]";
	}
	
	
	
	
}
