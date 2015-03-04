package org.smc.vo;

public class BusinessVO {

	private Integer business_no;
	private String business_name;
	private String business_agent;
	private String business_registNo;
	private String business_address;
	private String business_businessName;
	private String business_species;
	private String business_detailSpecies;
	private String business_email;
	private String business_residentNo;
	private String business_phoneNo;
	private String business_homeNo;
	private String business_emergencyNo;
	private String business_businessBirth;
	private String business_memo;

	
	
	public String getBusiness_agent() {
		return business_agent;
	}

	public void setBusiness_agent(String business_agent) {
		this.business_agent = business_agent;
	}

	public Integer getBusiness_no() {
		return business_no;
	}

	public void setBusiness_no(Integer business_no) {
		this.business_no = business_no;
	}

	public String getBusiness_name() {
		return business_name;
	}

	public void setBusiness_name(String business_name) {
		this.business_name = business_name;
	}

	public String getBusiness_registNo() {
		return business_registNo;
	}

	public void setBusiness_registNo(String business_registNo) {
		this.business_registNo = business_registNo;
	}

	public String getBusiness_address() {
		return business_address;
	}

	public void setBusiness_address(String business_address) {
		this.business_address = business_address;
	}

	public String getBusiness_businessName() {
		return business_businessName;
	}

	public void setBusiness_businessName(String business_businessName) {
		this.business_businessName = business_businessName;
	}

	public String getBusiness_species() {
		return business_species;
	}

	public void setBusiness_species(String business_species) {
		this.business_species = business_species;
	}

	public String getBusiness_detailSpecies() {
		return business_detailSpecies;
	}

	public void setBusiness_detailSpecies(String business_detailSpecies) {
		this.business_detailSpecies = business_detailSpecies;
	}

	public String getBusiness_email() {
		return business_email;
	}

	public void setBusiness_email(String business_email) {
		if (business_email.equals("")) {

			this.business_email = "없음";

		} else {

			this.business_email = business_email;

		}
	}

	public String getBusiness_residentNo() {
		return business_residentNo;
	}

	public void setBusiness_residentNo(String business_residentNo) {
		if (business_residentNo.equals("")) {

			this.business_residentNo = "없음";

		} else {

			this.business_residentNo = business_residentNo;

		}
	}

	public String getBusiness_phoneNo() {
		return business_phoneNo;
	}

	public void setBusiness_phoneNo(String business_phoneNo) {
		this.business_phoneNo = business_phoneNo;
	}

	public String getBusiness_homeNo() {
		return business_homeNo;
	}

	public void setBusiness_homeNo(String business_homeNo) {
		if (business_homeNo.equals("")) {

			this.business_homeNo = "없음";

		} else {

			this.business_homeNo = business_homeNo;

		}

	}

	public String getBusiness_emergencyNo() {
		return business_emergencyNo;
	}

	public void setBusiness_emergencyNo(String business_emergencyNo) {
		if (business_emergencyNo.equals("")) {

			this.business_emergencyNo = "없음";

		} else {

			this.business_emergencyNo = business_emergencyNo;

		}
	}

	public String getBusiness_businessBirth() {
		return business_businessBirth;
	}

	public void setBusiness_businessBirth(String business_businessBirth) {
		if (business_businessBirth.equals("")) {

			this.business_businessBirth = "1990-01-01";

		} else {

			this.business_businessBirth = business_businessBirth;

		}
	}

	public String getBusiness_memo() {
		return business_memo;
	}

	public void setBusiness_memo(String business_memo) {

		if (business_memo.equals("")) {

			this.business_memo = "없음";

		} else {

			this.business_memo = business_memo;

		}

	}

	@Override
	public String toString() {
		return "BusinessVO [business_no=" + business_no + ", business_name="
				+ business_name + ", business_agent=" + business_agent
				+ ", business_registNo=" + business_registNo
				+ ", business_address=" + business_address
				+ ", business_businessName=" + business_businessName
				+ ", business_species=" + business_species
				+ ", business_detailSpecies=" + business_detailSpecies
				+ ", business_email=" + business_email
				+ ", business_residentNo=" + business_residentNo
				+ ", business_phoneNo=" + business_phoneNo
				+ ", business_homeNo=" + business_homeNo
				+ ", business_emergencyNo=" + business_emergencyNo
				+ ", business_businessBirth=" + business_businessBirth
				+ ", business_memo=" + business_memo + "]";
	}



}
