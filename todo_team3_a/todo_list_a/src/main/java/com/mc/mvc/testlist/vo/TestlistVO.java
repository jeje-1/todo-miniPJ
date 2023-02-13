package com.mc.mvc.testlist.vo;

public class TestlistVO {

	private String description, docRegStartDt, docRegEndDt, docExamStartDt, docExamEndDt, 
	docPassDt, pracRegStartDt, pracRegEndDt, pracExamStartDt, pracExamEndDt, pracPassDt ;

	public TestlistVO(String description, String docRegStartDt, String docRegEndDt, String docExamStartDt,
			String docExamEndDt, String docPassDt, String pracRegStartDt, String pracRegEndDt, String pracExamStartDt,
			String pracExamEndDt, String pracPassDt) {
		super();
		this.description = description;
		this.docRegStartDt = docRegStartDt;
		this.docRegEndDt = docRegEndDt;
		this.docExamStartDt = docExamStartDt;
		this.docExamEndDt = docExamEndDt;
		this.docPassDt = docPassDt;
		this.pracRegStartDt = pracRegStartDt;
		this.pracRegEndDt = pracRegEndDt;
		this.pracExamStartDt = pracExamStartDt;
		this.pracExamEndDt = pracExamEndDt;
		this.pracPassDt = pracPassDt;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((docExamEndDt == null) ? 0 : docExamEndDt.hashCode());
		result = prime * result + ((docExamStartDt == null) ? 0 : docExamStartDt.hashCode());
		result = prime * result + ((docPassDt == null) ? 0 : docPassDt.hashCode());
		result = prime * result + ((docRegEndDt == null) ? 0 : docRegEndDt.hashCode());
		result = prime * result + ((docRegStartDt == null) ? 0 : docRegStartDt.hashCode());
		result = prime * result + ((pracExamEndDt == null) ? 0 : pracExamEndDt.hashCode());
		result = prime * result + ((pracExamStartDt == null) ? 0 : pracExamStartDt.hashCode());
		result = prime * result + ((pracPassDt == null) ? 0 : pracPassDt.hashCode());
		result = prime * result + ((pracRegEndDt == null) ? 0 : pracRegEndDt.hashCode());
		result = prime * result + ((pracRegStartDt == null) ? 0 : pracRegStartDt.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TestlistVO other = (TestlistVO) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (docExamEndDt == null) {
			if (other.docExamEndDt != null)
				return false;
		} else if (!docExamEndDt.equals(other.docExamEndDt))
			return false;
		if (docExamStartDt == null) {
			if (other.docExamStartDt != null)
				return false;
		} else if (!docExamStartDt.equals(other.docExamStartDt))
			return false;
		if (docPassDt == null) {
			if (other.docPassDt != null)
				return false;
		} else if (!docPassDt.equals(other.docPassDt))
			return false;
		if (docRegEndDt == null) {
			if (other.docRegEndDt != null)
				return false;
		} else if (!docRegEndDt.equals(other.docRegEndDt))
			return false;
		if (docRegStartDt == null) {
			if (other.docRegStartDt != null)
				return false;
		} else if (!docRegStartDt.equals(other.docRegStartDt))
			return false;
		if (pracExamEndDt == null) {
			if (other.pracExamEndDt != null)
				return false;
		} else if (!pracExamEndDt.equals(other.pracExamEndDt))
			return false;
		if (pracExamStartDt == null) {
			if (other.pracExamStartDt != null)
				return false;
		} else if (!pracExamStartDt.equals(other.pracExamStartDt))
			return false;
		if (pracPassDt == null) {
			if (other.pracPassDt != null)
				return false;
		} else if (!pracPassDt.equals(other.pracPassDt))
			return false;
		if (pracRegEndDt == null) {
			if (other.pracRegEndDt != null)
				return false;
		} else if (!pracRegEndDt.equals(other.pracRegEndDt))
			return false;
		if (pracRegStartDt == null) {
			if (other.pracRegStartDt != null)
				return false;
		} else if (!pracRegStartDt.equals(other.pracRegStartDt))
			return false;
		return true;
	}

   
    
	
	
	
	
	
}