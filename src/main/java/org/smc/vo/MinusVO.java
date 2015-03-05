package org.smc.vo;

public class MinusVO {
	
	private Integer minus_no;
	private String minus_name;
	private String minus_agent;
	private Integer minus_5g;
	private Integer minus_2l;
	private Integer minus_05l;
	private Integer minus_03l;
	private Integer minus_135l;
	private Integer minus_5g_back_bottle;
	private Integer minus_5g_back_box;
	private Integer minus_135_back_bottle;
	private Integer minus_135l_back_box;
	private Integer minus_muchine;
	private Integer minus_mcup;
	private Integer minus_rcup;
	private Integer minus_etc;
	private Integer minus_pl_plus;
	private Integer minus_pl_minus;
	private String minus_memo;
	private String minus_date;
	
	public Integer getMinus_no() {
		return minus_no;
	}
	public void setMinus_no(Integer minus_no) {
		this.minus_no = minus_no;
	}
	public String getMinus_name() {
		return minus_name;
	}
	public void setMinus_name(String minus_name) {
		this.minus_name = minus_name;
	}
	public String getMinus_agent() {
		return minus_agent;
	}
	public void setMinus_agent(String minus_agent) {
		this.minus_agent = minus_agent;
	}
	public Integer getMinus_5g() {
		return minus_5g;
	}
	public void setMinus_5g(Integer minus_5g) {
		if (minus_5g==null) {

			this.minus_5g = 0;

		} else {

			this.minus_5g = minus_5g;

		}	}
	public Integer getMinus_2l() {
		return minus_2l;
	}
	public void setMinus_2l(Integer minus_2l) {
		if (minus_2l==null) {

			this.minus_2l = 0;

		} else {

			this.minus_2l = minus_2l;

		}	}
	public Integer getMinus_05l() {
		return minus_05l;
	}
	public void setMinus_05l(Integer minus_05l) {
		if (minus_05l==null) {

			this.minus_05l = 0;

		} else {

			this.minus_05l = minus_05l;

		}	}
	public Integer getMinus_03l() {
		return minus_03l;
	}
	public void setMinus_03l(Integer minus_03l) {
		if (minus_03l==null) {

			this.minus_03l = 0;

		} else {

			this.minus_03l = minus_03l;

		}	}
	public Integer getMinus_135l() {
		return minus_135l;
	}
	public void setMinus_135l(Integer minus_135l) {
		if (minus_135l==null) {

			this.minus_135l = 0;

		} else {

			this.minus_135l = minus_135l;

		}	}
	public Integer getMinus_5g_back_bottle() {
		return minus_5g_back_bottle;
	}
	public void setMinus_5g_back_bottle(Integer minus_5g_back_bottle) {
		if (minus_5g_back_bottle==null) {

			this.minus_5g_back_bottle = 0;

		} else {

			this.minus_5g_back_bottle = minus_5g_back_bottle;

		}	}
	public Integer getMinus_5g_back_box() {
		return minus_5g_back_box;
	}
	public void setMinus_5g_back_box(Integer minus_5g_back_box) {
		if (minus_5g_back_box==null) {

			this.minus_5g_back_box = 0;

		} else {

			this.minus_5g_back_box = minus_5g_back_box;

		}	}
	public Integer getMinus_135_back_bottle() {
		return minus_135_back_bottle;
	}
	public void setMinus_135_back_bottle(Integer minus_135_back_bottle) {
		if (minus_135_back_bottle==null) {

			this.minus_135_back_bottle = 0;

		} else {

			this.minus_135_back_bottle = minus_135_back_bottle;

		}	}
	public Integer getMinus_135l_back_box() {
		return minus_135l_back_box;
	}
	public void setMinus_135l_back_box(Integer minus_135l_back_box) {
		if (minus_135l_back_box==null) {

			this.minus_135l_back_box = 0;

		} else {

			this.minus_135l_back_box = minus_135l_back_box;

		}	}
	public Integer getMinus_muchine() {
		return minus_muchine;
	}
	public void setMinus_muchine(Integer minus_muchine) {
		if (minus_muchine==null) {

			this.minus_muchine = 0;

		} else {

			this.minus_muchine = minus_muchine;

		}	}
	public Integer getMinus_mcup() {
		return minus_mcup;
	}
	public void setMinus_mcup(Integer minus_mcup) {
		if (minus_mcup==null) {

			this.minus_mcup = 0;

		} else {

			this.minus_mcup = minus_mcup;

		}	}
	public Integer getMinus_rcup() {
		return minus_rcup;
	}
	public void setMinus_rcup(Integer minus_rcup) {
		if (minus_rcup==null) {

			this.minus_rcup = 0;

		} else {

			this.minus_rcup = minus_rcup;

		}	}
	public Integer getMinus_etc() {
		return minus_etc;
	}
	public void setMinus_etc(Integer minus_etc) {
		if (minus_etc==null) {

			this.minus_etc = 0;

		} else {

			this.minus_etc = minus_etc;

		}	}
	public Integer getMinus_pl_plus() {
		return minus_pl_plus;
	}
	public void setMinus_pl_plus(Integer minus_pl_plus) {
		if (minus_pl_plus==null) {

			this.minus_pl_plus = 0;

		} else {

			this.minus_pl_plus = minus_pl_plus;

		}	}
	public Integer getMinus_pl_minus() {
		return minus_pl_minus;
	}
	public void setMinus_pl_minus(Integer minus_pl_minus) {
		if (minus_pl_minus==null) {

			this.minus_pl_minus = 0;

		} else {

			this.minus_pl_minus = minus_pl_minus;

		}	}
	public String getMinus_memo() {
		return minus_memo;
	}
	public void setMinus_memo(String minus_memo) {
		if (minus_memo.equals("")) {

			this.minus_memo = "¾øÀ½";

		} else {

			this.minus_memo = minus_memo;

		}	}
	public String getMinus_date() {
		return minus_date;
	}
	public void setMinus_date(String minus_date) {
		this.minus_date = minus_date;
	}
	@Override
	public String toString() {
		return "MinusVO [minus_no=" + minus_no + ", minus_name=" + minus_name
				+ ", minus_agent=" + minus_agent + ", minus_5g=" + minus_5g
				+ ", minus_2l=" + minus_2l + ", minus_05l=" + minus_05l
				+ ", minus_03l=" + minus_03l + ", minus_135l=" + minus_135l
				+ ", minus_5g_back_bottle=" + minus_5g_back_bottle
				+ ", minus_5g_back_box=" + minus_5g_back_box
				+ ", minus_135_back_bottle=" + minus_135_back_bottle
				+ ", minus_135l_back_box=" + minus_135l_back_box
				+ ", minus_muchine=" + minus_muchine + ", minus_mcup="
				+ minus_mcup + ", minus_rcup=" + minus_rcup + ", minus_etc="
				+ minus_etc + ", minus_pl_plus=" + minus_pl_plus
				+ ", minus_pl_minus=" + minus_pl_minus + ", minus_memo="
				+ minus_memo + ", minus_date=" + minus_date + "]";
	}
	
	
	
}
