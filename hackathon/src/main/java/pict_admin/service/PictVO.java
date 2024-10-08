/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pict_admin.service;

/**
 * @Class Name : SampleVO.java
 * @Description : SampleVO Class
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2009.03.16           최초생성
 *
 * @author 개발프레임웍크 실행환경 개발팀
 * @since 2009. 03.16
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class PictVO extends PictDefaultVO {

	private static final long serialVersionUID = 1L;

	private int idx;
	private boolean api;
	private String saveType;
	private int order_val;
	private String user_id;
	private String max_idx;
	private String target_table;
	private String reg_date;
	private String key_id;
	private String title;
	private String content;
	private String coin_text;
	private String type;
	
	private String name;
	private String position_x;
	private String position_y;
	private String position_z;
	private String rotation_x;
	private String rotation_y;
	private String rotation_z;
	private String cloth_id;
	private String face_id;
	private String hair_id;
	private String shoes_id;
	private String body;
	
	private String cloth;
	private String face;
	private String hair;
	private String shoes;
	
	private String use_at;
	private String link_url;
	private String professor;
	private String reg_id;
	private String std_num;
	private String lecture_id;
	
	private String in_date;
	private String out_date;
	private String in_out;
	private String timediff;
	private String category;
	private String category_id;
	private String category_cnt;
	private String week;
	private String id;
	private String email;
	private String nick_name;
	private String mobile;
	private String search_category;
	private String search_name;
	private String search_title;
	
	
	private String search_id;
	private String search_nickname;
	private String search_mobile;
	private String search_email;

	private String whole_timediff;
	private String search_text;
	private String order_by;
	private String active_ty;
	private String campus;
	private String text;
	private String professor_id;
	private String campus_id;
	private String week_cha;
	private String week_count;
	private String text2;
	private String board_type;
	private String news;
	private String reg_date_for;
	private String file_1; 
	private String file_2;
	private String file_3;
	private String file_4;
	private String file_5;
	private String del_idx;
	private String target_id;
	private String cnt;
	private String assignment_id;
	private String local;
	private String team_cnt;
	private String assignment_name;
	private String keyword;
	private String file_url;
	private String team_id;
	private String birthday;
	private String company;
	private String depart;
	private String shirt;
	private String parent_name;
	private String parent_birthday;
	private String parent_mobile;
	private String parent_relation;
	private String parent_address;
	private String parent_address2;
	private String award;
	private String judge;
	private String sex;
	private String password;
	
	private int pageNumber;
	private int startNumber;
	private int limit;
	private int totalPage;
	private int offset;
	private int lastPage;
	private int startPage;
	private int endPage;
	
	
	private int point_1;
	private int point_2;
	private int point_3;
	private int point_4;
	private int point;
	private int max_point;
	private int min_point;
	private int point_sum;
	private int point_cnt;
	private String is_judge;
	private String user_idx;
	private String user_assignment_id;
	private String img_url;
	private String team_title;
	private String mainy;
	private String avg_point;

	
	public String getAvg_point() {
		return avg_point;
	}
	public void setAvg_point(String avg_point) {
		this.avg_point = avg_point;
	}
	public String getMainy() {
		return mainy;
	}
	public void setMainy(String mainy) {
		this.mainy = mainy;
	}
	public String getTeam_title() {
		return team_title;
	}
	public void setTeam_title(String team_title) {
		this.team_title = team_title;
	}
	public int getPoint_1() {
		return point_1;
	}
	public int getPoint_2() {
		return point_2;
	}
	public int getPoint_3() {
		return point_3;
	}
	public int getPoint_4() {
		return point_4;
	}
	public int getPoint() {
		return point;
	}
	public int getMax_point() {
		return max_point;
	}
	public int getMin_point() {
		return min_point;
	}
	public int getPoint_sum() {
		return point_sum;
	}
	public int getPoint_cnt() {
		return point_cnt;
	}
	public void setPoint_1(int point_1) {
		this.point_1 = point_1;
	}
	public void setPoint_2(int point_2) {
		this.point_2 = point_2;
	}
	public void setPoint_3(int point_3) {
		this.point_3 = point_3;
	}
	public void setPoint_4(int point_4) {
		this.point_4 = point_4;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public void setMax_point(int max_point) {
		this.max_point = max_point;
	}
	public void setMin_point(int min_point) {
		this.min_point = min_point;
	}
	public void setPoint_sum(int point_sum) {
		this.point_sum = point_sum;
	}
	public void setPoint_cnt(int point_cnt) {
		this.point_cnt = point_cnt;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	
	public String getUser_assignment_id() {
		return user_assignment_id;
	}
	public void setUser_assignment_id(String user_assignment_id) {
		this.user_assignment_id = user_assignment_id;
	}
	
	public String getIs_judge() {
		return is_judge;
	}
	public String getUser_idx() {
		return user_idx;
	}
	
	public void setIs_judge(String is_judge) {
		this.is_judge = is_judge;
	}
	public void setUser_idx(String user_idx) {
		this.user_idx = user_idx;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public int getStartNumber() {
		return startNumber;
	}
	public int getLimit() {
		return limit;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public int getOffset() {
		return offset;
	}
	public int getLastPage() {
		return lastPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public void setStartNumber(int startNumber) {
		this.startNumber = startNumber;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getJudge() {
		return judge;
	}
	public void setJudge(String judge) {
		this.judge = judge;
	}
	public String getAward() {
		return award;
	}
	public void setAward(String award) {
		this.award = award;
	}
	public String getCnt() {
		return cnt;
	}
	public String getAssignment_id() {
		return assignment_id;
	}
	public String getLocal() {
		return local;
	}
	public String getTeam_cnt() {
		return team_cnt;
	}
	public String getAssignment_name() {
		return assignment_name;
	}
	public String getKeyword() {
		return keyword;
	}
	public String getFile_url() {
		return file_url;
	}
	public String getTeam_id() {
		return team_id;
	}
	public String getBirthday() {
		return birthday;
	}
	public String getCompany() {
		return company;
	}
	public String getDepart() {
		return depart;
	}
	public String getShirt() {
		return shirt;
	}
	public String getParent_name() {
		return parent_name;
	}
	public String getParent_birthday() {
		return parent_birthday;
	}
	public String getParent_mobile() {
		return parent_mobile;
	}
	public String getParent_relation() {
		return parent_relation;
	}
	public String getParent_address() {
		return parent_address;
	}
	public String getParent_address2() {
		return parent_address2;
	}
	public void setAssignment_id(String assignment_id) {
		this.assignment_id = assignment_id;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public void setTeam_cnt(String team_cnt) {
		this.team_cnt = team_cnt;
	}
	public void setAssignment_name(String assignment_name) {
		this.assignment_name = assignment_name;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}
	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public void setDepart(String depart) {
		this.depart = depart;
	}
	public void setShirt(String shirt) {
		this.shirt = shirt;
	}
	public void setParent_name(String parent_name) {
		this.parent_name = parent_name;
	}
	public void setParent_birthday(String parent_birthday) {
		this.parent_birthday = parent_birthday;
	}
	public void setParent_mobile(String parent_mobile) {
		this.parent_mobile = parent_mobile;
	}
	public void setParent_relation(String parent_relation) {
		this.parent_relation = parent_relation;
	}
	public void setParent_address(String parent_address) {
		this.parent_address = parent_address;
	}
	public void setParent_address2(String parent_address2) {
		this.parent_address2 = parent_address2;
	}
	public void setCnt(String cnt) {
		this.cnt = cnt;
	}
	public String getTarget_id() {
		return target_id;
	}
	public void setTarget_id(String target_id) {
		this.target_id = target_id;
	}
	public String getDel_idx() {
		return del_idx;
	}
	public void setDel_idx(String del_idx) {
		this.del_idx = del_idx;
	}
	public String getFile_1() {
		return file_1;
	}
	public void setFile_1(String file_1) {
		this.file_1 = file_1;
	}
	public String getFile_2() {
		return file_2;
	}
	public void setFile_2(String file_2) {
		this.file_2 = file_2;
	}
	public String getFile_3() {
		return file_3;
	}
	public void setFile_3(String file_3) {
		this.file_3 = file_3;
	}
	public String getFile_4() {
		return file_4;
	}
	public void setFile_4(String file_4) {
		this.file_4 = file_4;
	}
	public String getFile_5() {
		return file_5;
	}
	public void setFile_5(String file_5) {
		this.file_5 = file_5;
	}
	public String getReg_date_for() {
		return reg_date_for;
	}
	public void setReg_date_for(String reg_date_for) {
		this.reg_date_for = reg_date_for;
	}
	public String getNews() {
		return news;
	}
	public void setNews(String news) {
		this.news = news;
	}
	public String getBoard_type() {
		return board_type;
	}
	public void setBoard_type(String board_type) {
		this.board_type = board_type;
	}
	public String getText2() {
		return text2;
	}
	public void setText2(String text2) {
		this.text2 = text2;
	}
	public String getWeek_cha() {
		return week_cha;
	}
	public void setWeek_cha(String week_cha) {
		this.week_cha = week_cha;
	}
	public String getWeek_count() {
		return week_count;
	}
	public void setWeek_count(String week_count) {
		this.week_count = week_count;
	}
	public String getCampus_id() {
		return campus_id;
	}
	public void setCampus_id(String campus_id) {
		this.campus_id = campus_id;
	}
	public String getProfessor_id() {
		return professor_id;
	}
	public void setProfessor_id(String professor_id) {
		this.professor_id = professor_id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getCampus() {
		return campus;
	}
	public void setCampus(String campus) {
		this.campus = campus;
	}
	public String getActive_ty() {
		return active_ty;
	}
	public void setActive_ty(String active_ty) {
		this.active_ty = active_ty;
	}
	public String getOrder_by() {
		return order_by;
	}
	public void setOrder_by(String order_by) {
		this.order_by = order_by;
	}
	public String getSearch_text() {
		return search_text;
	}
	public void setSearch_text(String search_text) {
		this.search_text = search_text;
	}
	public String getWhole_timediff() {
		return whole_timediff;
	}
	public void setWhole_timediff(String whole_timediff) {
		this.whole_timediff = whole_timediff;
	}
	public String getSearch_id() {
		return search_id;
	}
	public void setSearch_id(String search_id) {
		this.search_id = search_id;
	}
	public String getSearch_nickname() {
		return search_nickname;
	}
	public void setSearch_nickname(String search_nickname) {
		this.search_nickname = search_nickname;
	}
	public String getSearch_mobile() {
		return search_mobile;
	}
	public void setSearch_mobile(String search_mobile) {
		this.search_mobile = search_mobile;
	}
	public String getSearch_email() {
		return search_email;
	}
	public void setSearch_email(String search_email) {
		this.search_email = search_email;
	}
	public String getSearch_category() {
		return search_category;
	}
	public void setSearch_category(String search_category) {
		this.search_category = search_category;
	}
	public String getSearch_name() {
		return search_name;
	}
	public void setSearch_name(String search_name) {
		this.search_name = search_name;
	}
	public String getSearch_title() {
		return search_title;
	}
	public void setSearch_title(String search_title) {
		this.search_title = search_title;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getCategory_cnt() {
		return category_cnt;
	}
	public void setCategory_cnt(String category_cnt) {
		this.category_cnt = category_cnt;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTimediff() {
		return timediff;
	}
	public void setTimediff(String timediff) {
		this.timediff = timediff;
	}
	public String getIn_out() {
		return in_out;
	}
	public void setIn_out(String in_out) {
		this.in_out = in_out;
	}
	public String getIn_date() {
		return in_date;
	}
	public void setIn_date(String in_date) {
		this.in_date = in_date;
	}
	public String getOut_date() {
		return out_date;
	}
	public void setOut_date(String out_date) {
		this.out_date = out_date;
	}
	public String getLecture_id() {
		return lecture_id;
	}
	public void setLecture_id(String lecture_id) {
		this.lecture_id = lecture_id;
	}
	public String getStd_num() {
		return std_num;
	}
	public void setStd_num(String std_num) {
		this.std_num = std_num;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getUse_at() {
		return use_at;
	}
	public void setUse_at(String use_at) {
		this.use_at = use_at;
	}
	public String getLink_url() {
		return link_url;
	}
	public void setLink_url(String link_url) {
		this.link_url = link_url;
	}
	public String getCloth() {
		return cloth;
	}
	public void setCloth(String cloth) {
		this.cloth = cloth;
	}
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public String getHair() {
		return hair;
	}
	public void setHair(String hair) {
		this.hair = hair;
	}
	public String getShoes() {
		return shoes;
	}
	public void setShoes(String shoes) {
		this.shoes = shoes;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition_x() {
		return position_x;
	}
	public void setPosition_x(String position_x) {
		this.position_x = position_x;
	}
	public String getPosition_y() {
		return position_y;
	}
	public void setPosition_y(String position_y) {
		this.position_y = position_y;
	}
	public String getPosition_z() {
		return position_z;
	}
	public void setPosition_z(String position_z) {
		this.position_z = position_z;
	}
	public String getRotation_x() {
		return rotation_x;
	}
	public void setRotation_x(String rotation_x) {
		this.rotation_x = rotation_x;
	}
	public String getRotation_y() {
		return rotation_y;
	}
	public void setRotation_y(String rotation_y) {
		this.rotation_y = rotation_y;
	}
	public String getRotation_z() {
		return rotation_z;
	}
	public void setRotation_z(String rotation_z) {
		this.rotation_z = rotation_z;
	}
	public String getCloth_id() {
		return cloth_id;
	}
	public void setCloth_id(String cloth_id) {
		this.cloth_id = cloth_id;
	}
	public String getFace_id() {
		return face_id;
	}
	public void setFace_id(String face_id) {
		this.face_id = face_id;
	}
	public String getHair_id() {
		return hair_id;
	}
	public void setHair_id(String hair_id) {
		this.hair_id = hair_id;
	}
	public String getShoes_id() {
		return shoes_id;
	}
	public void setShoes_id(String shoes_id) {
		this.shoes_id = shoes_id;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getKey_id() {
		return key_id;
	}
	public void setKey_id(String key_id) {
		this.key_id = key_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCoin_text() {
		return coin_text;
	}
	public void setCoin_text(String coin_text) {
		this.coin_text = coin_text;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getTarget_table() {
		return target_table;
	}
	public void setTarget_table(String target_table) {
		this.target_table = target_table;
	}
	public String getMax_idx() {
		return max_idx;
	}
	public void setMax_idx(String max_idx) {
		this.max_idx = max_idx;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getOrder_val() {
		return order_val;
	}
	public void setOrder_val(int order_val) {
		this.order_val = order_val;
	}
	public String getSaveType() {
		return saveType;
	}
	public void setSaveType(String saveType) {
		this.saveType = saveType;
	}
	public boolean isApi() {
		return api;
	}
	public boolean api() {
		return api;
	}
	public void setApi(boolean api) {
		this.api = api;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	
	
	
	
}
