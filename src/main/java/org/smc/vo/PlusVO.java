package org.smc.vo;

public class PlusVO {

	private Integer plus_no;
	private Integer plus_5g;
	private Integer plus_2l;
	private Integer plus_05l;
	private Integer plus_03l;
	private Integer plus_135l;
	private Integer plus_5g_back_bottle;
	private Integer plus_5g_back_box;
	private Integer plus_135_back_bottle;
	private Integer plus_135l_back_box;
	private Integer plus_muchine;
	private Integer plus_mcup;
	private Integer plus_rcup;
	private Integer plus_etc;
	private Integer plus_pl_plus;
	private Integer plus_pl_minus;
	private String plus_memo;
	private String plus_date;
	public Integer getPlus_no() {
		return plus_no;
	}
	public void setPlus_no(Integer plus_no) {
		this.plus_no = plus_no;
	}
	public Integer getPlus_5g() {
		return plus_5g;
	}
	public void setPlus_5g(Integer plus_5g) {
		if (plus_5g==null) {

			this.plus_5g = 0;

		} else {

			this.plus_5g = plus_5g;

		}
	}
	public Integer getPlus_2l() {
		return plus_2l;
	}
	public void setPlus_2l(Integer plus_2l) {
		if (plus_2l==null) {

			this.plus_2l = 0;

		} else {

			this.plus_2l = plus_2l;

		}
	}
	public Integer getPlus_05l() {
		return plus_05l;
	}
	public void setPlus_05l(Integer plus_05l) {
		if (plus_05l==null) {

			this.plus_05l = 0;

		} else {

			this.plus_05l = plus_05l;

		}
	}
	public Integer getPlus_03l() {
		return plus_03l;
	}
	public void setPlus_03l(Integer plus_03l) {
		if (plus_03l==null) {

			this.plus_03l = 0;

		} else {

			this.plus_03l = plus_03l;

		}
	}
	public Integer getPlus_135l() {
		return plus_135l;
	}
	public void setPlus_135l(Integer plus_135l) {
		if (plus_135l==null) {

			this.plus_135l = 0;

		} else {

			this.plus_135l = plus_135l;

		}
	}
	public Integer getPlus_5g_back_bottle() {
		return plus_5g_back_bottle;
	}
	public void setPlus_5g_back_bottle(Integer plus_5g_back_bottle) {
		if (plus_5g_back_bottle==null) {

			this.plus_5g_back_bottle = 0;

		} else {

			this.plus_5g_back_bottle = plus_5g_back_bottle;

		}
	}
	public Integer getPlus_5g_back_box() {
		return plus_5g_back_box;
	}
	public void setPlus_5g_back_box(Integer plus_5g_back_box) {
		if (plus_5g_back_box==null) {

			this.plus_5g_back_box = 0;

		} else {

			this.plus_5g_back_box = plus_5g_back_box;

		}
	}
	public Integer getPlus_135_back_bottle() {
		return plus_135_back_bottle;
	}
	public void setPlus_135_back_bottle(Integer plus_135_back_bottle) {
		if (plus_135_back_bottle==null) {

			this.plus_135_back_bottle = 0;

		} else {

			this.plus_135_back_bottle = plus_135_back_bottle;

		}
	}
	public Integer getPlus_135l_back_box() {
		return plus_135l_back_box;
	}
	public void setPlus_135l_back_box(Integer plus_135l_back_box) {
		if (plus_135l_back_box==null) {

			this.plus_135l_back_box = 0;

		} else {

			this.plus_135l_back_box = plus_135l_back_box;

		}
	}
	public Integer getPlus_muchine() {
		return plus_muchine;
	}
	public void setPlus_muchine(Integer plus_muchine) {
		if (plus_muchine==null) {

			this.plus_muchine = 0;

		} else {

			this.plus_muchine = plus_muchine;

		}
	}
	public Integer getPlus_mcup() {
		return plus_mcup;
	}
	public void setPlus_mcup(Integer plus_mcup) {
		if (plus_mcup==null) {

			this.plus_mcup = 0;

		} else {

			this.plus_mcup = plus_mcup;

		}
	}
	public Integer getPlus_rcup() {
		return plus_rcup;
	}
	public void setPlus_rcup(Integer plus_rcup) {
		if (plus_rcup==null) {

			this.plus_rcup = 0;

		} else {

			this.plus_rcup = plus_rcup;

		}
	}
	public Integer getPlus_etc() {
		return plus_etc;
	}
	public void setPlus_etc(Integer plus_etc) {
		if (plus_etc==null) {

			this.plus_etc = 0;

		} else {

			this.plus_etc = plus_etc;

		}
	}
	public Integer getPlus_pl_plus() {
		return plus_pl_plus;
	}
	public void setPlus_pl_plus(Integer plus_pl_plus) {
		if (plus_pl_plus==null) {

			this.plus_pl_plus = 0;

		} else {

			this.plus_pl_plus = plus_pl_plus;

		}
	}
	public Integer getPlus_pl_minus() {
		return plus_pl_minus;
	}
	public void setPlus_pl_minus(Integer plus_pl_minus) {
		if (plus_pl_minus==null) {

			this.plus_pl_minus = 0;

		} else {

			this.plus_pl_minus = plus_pl_minus;

		}
	}
	public String getPlus_memo() {
		return plus_memo;
	}
	public void setPlus_memo(String plus_memo) {
		if (plus_memo.equals("")) {

			this.plus_memo = "¾øÀ½";

		} else {

			this.plus_memo = plus_memo;

		}
	}
	public String getPlus_date() {
		return plus_date;
	}
	public void setPlus_date(String plus_date) {
		this.plus_date = plus_date;
	}
	@Override
	public String toString() {
		return "PlusVO [plus_no=" + plus_no + ", plus_5g=" + plus_5g
				+ ", plus_2l=" + plus_2l + ", plus_05l=" + plus_05l
				+ ", plus_03l=" + plus_03l + ", plus_135l=" + plus_135l
				+ ", plus_5g_back_bottle=" + plus_5g_back_bottle
				+ ", plus_5g_back_box=" + plus_5g_back_box
				+ ", plus_135_back_bottle=" + plus_135_back_bottle
				+ ", plus_135l_back_box=" + plus_135l_back_box
				+ ", plus_muchine=" + plus_muchine + ", plus_mcup=" + plus_mcup
				+ ", plus_rcup=" + plus_rcup + ", plus_etc=" + plus_etc
				+ ", plus_pl_plus=" + plus_pl_plus + ", plus_pl_minus="
				+ plus_pl_minus + ", plus_memo=" + plus_memo + ", plus_date="
				+ plus_date + "]";
	}
	
	
	
}
