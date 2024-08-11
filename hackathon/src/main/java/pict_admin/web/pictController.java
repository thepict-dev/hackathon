package pict_admin.web;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;

import org.apache.commons.codec.binary.Base64;
import javax.annotation.Resource;
import javax.mail.PasswordAuthentication;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import pict_admin.service.AdminService;
import pict_admin.service.AdminVO;
import pict_admin.service.PictService;
import pict_admin.service.PictVO;

@Controller
public class pictController {
	PasswordAuthentication pa;
	
	@Resource(name = "pictService")
	private PictService pictService;
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	
	@RequestMapping(value = "/main.do")
	public String main(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		
		return "pict/main/main";
	}
	//행사소개
	@RequestMapping(value = "/intro.do")
	public String intro(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		
		return "pict/main/intro";
	}
	//공지
	@RequestMapping(value = "/notice.do")
	public String notice(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setCategory("1");
		List<?> reference_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", reference_list);
		return "pict/main/notice";
	}
	//공지뷰
	@RequestMapping(value = "/notice_view.do")
	public String notice_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/main/notice_view";
	}
	//뉴스
	@RequestMapping(value = "/news.do")
	public String news(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO.setCategory("2");
		List<?> reference_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", reference_list);
		
		return "pict/main/news";
	}
	//뉴스뷰
	@RequestMapping(value = "/news_view.do")
	public String news_view(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		pictVO = pictService.board_list_one(pictVO);
		model.addAttribute("pictVO", pictVO);
		return "pict/main/news_view";
	}
	
	//사전등록
	
	
	@RequestMapping("/password_compare.do")
	@ResponseBody
	public HashMap<String, Object> password_compare(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		String password = param.get("password").toString();
		pictVO.setPassword(password);
		
		pictVO = pictService.password_compare(pictVO);
		if(pictVO != null) {
			map.put("rst", "Y");
			return map;
		}
		else {
			map.put("rst", "N");
			return map;
		}
		
	}
	@RequestMapping("/register_insert.do")
	@ResponseBody
	public String profile_img(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request, 
			@RequestParam("img") MultipartFile multi,
			@RequestPart(value = "request") Map<String, Object> param) throws Exception {	
		try {
			String uploadpath = "/user1/upload_file/hackathon/team";
			//String uploadpath  = "D:\\user1\\upload_file\\default";
            String originFilename = multi.getOriginalFilename();
            String extName = originFilename.substring(originFilename.lastIndexOf("."),originFilename.length());
            long size = multi.getSize();
            String saveFileName = genSaveFileName(extName);
            
            String assignment_id = param.get("assignment_id").toString();
            String local = param.get("local").toString();
            String title = param.get("title").toString();
            String team_cnt = param.get("team_cnt").toString();
            String assignment_name = param.get("assignment_name").toString();
            String keyword = param.get("keyword").toString();
            
            pictVO.setAssignment_id(assignment_id);
            pictVO.setLocal(local);
            pictVO.setTitle(title);
            pictVO.setTeam_cnt(team_cnt);
            pictVO.setAssignment_name(assignment_name);
            pictVO.setKeyword(keyword);
			
            
            if(!multi.isEmpty()){
                File file = new File(uploadpath, multi.getOriginalFilename());
                multi.transferTo(file);
                pictVO.setFile_url(file.getAbsolutePath());
                pictService.team_insert(pictVO);    
            }
            

            //팀원정보 넣기 (팀장포함)
            ArrayList<Object> arr = new ArrayList<Object>();
            arr = (ArrayList<Object>) param.get("person_info");
            System.out.println(arr.size()+ " 사이즈 몇이냐@@@@@@@@@@@@@@@@@@");
            for(int i=0; i<arr.size(); i++) {
            	Object obj = arr.get(i);
            	
            	if (obj instanceof Map<?, ?>) {
                    @SuppressWarnings("unchecked")
                    Map<String, Object> map = (Map<String, Object>) obj;
                    pictVO.setTeam_id(pictVO.getIdx()+"");
                    pictVO.setName(map.get("name").toString());
                    pictVO.setBirthday(map.get("birthday").toString());
                    pictVO.setSex(map.get("sex").toString());
                    pictVO.setMobile(map.get("mobile").toString());
                    pictVO.setEmail(map.get("email").toString());
                    pictVO.setCompany(map.get("company").toString());
                    pictVO.setDepart(map.get("depart").toString());
                    pictVO.setShirt(map.get("shirt").toString());
                    pictVO.setParent_name(map.get("parent_name").toString());
                    pictVO.setParent_birthday(map.get("parent_birthday").toString());
                    pictVO.setParent_mobile(map.get("parent_mobile").toString());
                    pictVO.setParent_relation(map.get("parent_relation").toString());
                    pictVO.setParent_address(map.get("parent_address").toString());
                    pictVO.setParent_address2(map.get("parent_address2").toString());
                    pictVO.setJudge("N");
                    pictService.user_insert(pictVO);
                }
            }
            
            
			return "Y";
		}
		catch(Exception e) {
			System.out.println(e);
			return "N";
		}
	}

	private String genSaveFileName(String extName) {
        String fileName = "";
        
        Calendar calendar = Calendar.getInstance();
        fileName += calendar.get(Calendar.YEAR);
        fileName += calendar.get(Calendar.MONTH);
        fileName += calendar.get(Calendar.DATE);
        fileName += calendar.get(Calendar.HOUR);
        fileName += calendar.get(Calendar.MINUTE);
        fileName += calendar.get(Calendar.SECOND);
        fileName += calendar.get(Calendar.MILLISECOND);
        fileName += extName;
        
        return fileName;
    }
	
	//심사페이지
	//로그인
	@RequestMapping(value = "/audit_main.do")
	public String audit_main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "redirect:/audit_login.do";
		}
		else {
		
			return "redirect:/audit_intro.do";
		
		}
		
	}
	@RequestMapping(value = "/audit_login.do")
	public String audit_login(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "pict/audit/audit_login";
		}
		else {
		
			return "redirect:/audit_intro.do";
		
		}
	}
	@RequestMapping(value = "/audit_login_action.do")
	public String audit_login_action(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request,  ModelMap model) throws Exception {
		//처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = pictVO.getName();
		String inputMobile = pictVO.getMobile();
		pictVO.setType("judge");
		pictVO = pictService.user_list_one_login(pictVO);

		if (pictVO != null && pictVO.getName() != null && !pictVO.getName().equals("") && pictVO.getMobile() != null && !pictVO.getMobile().equals("")) {
			if(inpuId.equals(pictVO.getName()) && inputMobile.equals(pictVO.getMobile())) {
				request.getSession().setAttribute("user_idx", pictVO.getIdx()+"");
				request.getSession().setAttribute("name", pictVO.getName());
				request.getSession().setAttribute("mobile", pictVO.getMobile());
				request.getSession().setAttribute("company", pictVO.getCompany());
				request.getSession().setAttribute("depart", pictVO.getDepart());
			    
				return "redirect:/audit_intro.do";
				
			}
			else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/audit_login.do");
				return "pict/admin/message";
			}
		}
		else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/audit_login.do");
			return "pict/admin/message";
		}
	}
	
	//인트로
	@RequestMapping(value = "/audit_intro.do")
	public String audit_intro(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "pict/audit/audit_login";
		}
		
		return "pict/audit/audit_intro";
	}
	//주제리스트
	@RequestMapping(value = "/audit_lists.do")
	public String audit_lists(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "pict/audit/audit_login";
		}
		
		pictVO.setUser_idx(request.getSession().getAttribute("user_idx").toString());
		List<PictVO> subject_list = pictService.subject_list(pictVO);
		if(subject_list.size() > 0) {
			int whole_cnt = subject_list.size();
			int remain_cnt = 0;
			String arr[] = subject_list.get(0).getUser_assignment_id().split(",");
			
			int subject1_cnt = 0;
			int subject2_cnt = 0;
			int subject3_cnt = 0;
			
			int subject1_remaincnt = 0;
			int subject2_remaincnt = 0;
			int subject3_remaincnt = 0;
			
			
			for(int i=0; i<subject_list.size(); i++) {
				if(subject_list.get(i).getIs_judge().equals("0")) {
					remain_cnt++;
				}
				if(subject_list.get(i).getAssignment_id().equals("1")) {
					subject1_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject1_remaincnt++;
					}
				}
				if(subject_list.get(i).getAssignment_id().equals("2")) {
					subject2_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject2_remaincnt++;
					}
				}
				if(subject_list.get(i).getAssignment_id().equals("3")) {
					subject3_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject3_remaincnt++;
					}
				}
			}
			
			model.addAttribute("subject_list", subject_list);
			model.addAttribute("whole_cnt", whole_cnt);
			model.addAttribute("remain_cnt", remain_cnt);
			model.addAttribute("arr", arr);
			
			model.addAttribute("subject1_cnt", subject1_cnt);
			model.addAttribute("subject2_cnt", subject2_cnt);
			model.addAttribute("subject3_cnt", subject3_cnt);
			model.addAttribute("subject1_remaincnt", subject1_remaincnt);
			model.addAttribute("subject2_remaincnt", subject2_remaincnt);
			model.addAttribute("subject3_remaincnt", subject3_remaincnt);
			
			
			pictVO.setUser_idx(request.getSession().getAttribute("user_idx").toString());
			List<PictVO> team_list = pictService.team_judge_list(pictVO);
			model.addAttribute("team_list", team_list);
			
		}
		else {
			model.addAttribute("message", "심사 정보가 존재하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/audit_intro.do");
			return "pict/admin/message";
		}
		
		
		return "pict/audit/audit_lists";
	}
	//팀리스트
	@RequestMapping(value = "/audit_team_list.do")
	public String audit_team_list(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "pict/audit/audit_login";
		}
		
		model.addAttribute("assignment_id", pictVO.getAssignment_id());
		pictVO.setUser_idx(request.getSession().getAttribute("user_idx").toString());
		List<PictVO> subject_list = pictService.subject_list(pictVO);
		if(subject_list.size() > 0) {
			int whole_cnt = subject_list.size();
			int remain_cnt = 0;
			String arr[] = subject_list.get(0).getUser_assignment_id().split(",");
			
			int subject1_cnt = 0;
			int subject2_cnt = 0;
			int subject3_cnt = 0;
			
			int subject1_remaincnt = 0;
			int subject2_remaincnt = 0;
			int subject3_remaincnt = 0;
			
			
			for(int i=0; i<subject_list.size(); i++) {
				if(subject_list.get(i).getIs_judge().equals("0")) {
					remain_cnt++;
				}
				if(subject_list.get(i).getAssignment_id().equals("1")) {
					subject1_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject1_remaincnt++;
					}
				}
				if(subject_list.get(i).getAssignment_id().equals("2")) {
					subject2_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject2_remaincnt++;
					}
				}
				if(subject_list.get(i).getAssignment_id().equals("3")) {
					subject3_cnt++;
					if(subject_list.get(i).getIs_judge().equals("0")) {
						subject3_remaincnt++;
					}
				}
			}
			
			model.addAttribute("whole_cnt", whole_cnt);
			model.addAttribute("remain_cnt", remain_cnt);
			
			model.addAttribute("subject1_cnt", subject1_cnt);
			model.addAttribute("subject2_cnt", subject2_cnt);
			model.addAttribute("subject3_cnt", subject3_cnt);
			model.addAttribute("subject1_remaincnt", subject1_remaincnt);
			model.addAttribute("subject2_remaincnt", subject2_remaincnt);
			model.addAttribute("subject3_remaincnt", subject3_remaincnt);
			
			
			pictVO.setUser_idx(request.getSession().getAttribute("user_idx").toString());
			List<PictVO> team_list = pictService.team_judge_list(pictVO);
			
			model.addAttribute("team_list", team_list);
			
		}
		else {
			model.addAttribute("message", "심사 정보가 존재하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/audit_intro.do");
			return "pict/admin/message";
		}
		
		
		return "pict/audit/audit_team_list";
	}

	//점수 표 정보
	@RequestMapping("/get_judge_info.do")
	@ResponseBody
	public HashMap<String, Object> get_judge_info(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		String user_idx = request.getSession().getAttribute("user_idx").toString();
		
		if(user_idx == null) {
			map.put("status", "logout");
			return map;
		}
		else {
			map.put("status", "login");
			pictVO.setUser_idx(user_idx);
			String team_id = param.get("team_id").toString();
			pictVO.setTeam_id(team_id);
			
			pictVO = pictService.get_judge_info(pictVO);
			if(pictVO != null) {
				map.put("rst", pictVO);
			}
			else {
				return map;
			}
		}
		return map;
	}
	//팀별 점수저장
	@RequestMapping("/get_judge_save.do")
	@ResponseBody
	public HashMap<String, Object> get_judge_save(@ModelAttribute("pictVO") PictVO pictVO, ModelMap model, HttpServletRequest request, @RequestBody Map<String, Object> param) throws Exception {	
		HashMap<String, Object> map = new HashMap<String, Object>();
		try {
			String user_idx = request.getSession().getAttribute("user_idx").toString();
			
			if(user_idx == null) {
				map.put("status", "logout");
				return map;
			}
			else {
				map.put("status", "login");
				pictVO.setUser_idx(user_idx);
				String team_id = param.get("team_id").toString();
				pictVO.setTeam_id(team_id);
				
				
				PictVO existVO = pictService.get_judge_info(pictVO);
				
				String point_1 = param.get("point_1").toString();
				pictVO.setPoint_1(point_1);
				String point_2= param.get("point_2").toString();
				pictVO.setPoint_2(point_2);
				String point_3 = param.get("point_3").toString();
				pictVO.setPoint_3(point_3);
				String point_4 = param.get("point_4").toString();
				pictVO.setPoint_4(point_4);
				
				if(existVO != null) {
					pictService.get_judge_update(pictVO);
					map.put("rst", "Y");
				}
				else {
					pictService.get_judge_insert(pictVO);
					map.put("rst", "Y");
				}
			}
			return map;
		}
		catch (Exception e){
			map.put("rst", "N");
			return map;
		}
		
	}
	
	
	//사용자 로그인
	@RequestMapping(value = "/user_main.do")
	public String user_main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "redirect:/user_login.do";
		}
		else {
		
			return "redirect:/";
		}
	}
	@RequestMapping(value = "/user_login.do")
	public String user_login(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("user_idx");
		if(sessions == null || sessions == "null") {
			return "pict/main/user_login";
		}
		else {
		
			return "redirect:/";
		
		}
	}
	@RequestMapping(value = "/user_logout.do")
	public String user_logout(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request,  ModelMap model) throws Exception {
		request.getSession().setAttribute("user_idx", null);
		request.getSession().setAttribute("name", null);
		request.getSession().setAttribute("mobile", null);
		request.getSession().setAttribute("company", null);
		request.getSession().setAttribute("depart", null);

		return "redirect:/";
		
	}
	@RequestMapping(value = "/user_login_action.do")
	public String user_login_action(@ModelAttribute("pictVO") PictVO pictVO, HttpServletRequest request,  ModelMap model) throws Exception {
		//처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = pictVO.getName();
		String inputMobile = pictVO.getMobile();
		pictVO.setType("user");
		pictVO = pictService.user_list_one_login(pictVO);

		if (pictVO != null && pictVO.getName() != null && !pictVO.getName().equals("") && pictVO.getMobile() != null && !pictVO.getMobile().equals("")) {
		
			if(inpuId.equals(pictVO.getName()) && inputMobile.equals(pictVO.getMobile())) {
				request.getSession().setAttribute("user_idx", pictVO.getIdx()+"");
				request.getSession().setAttribute("name", pictVO.getName());
				request.getSession().setAttribute("mobile", pictVO.getMobile());
				request.getSession().setAttribute("company", pictVO.getCompany());
				request.getSession().setAttribute("depart", pictVO.getDepart());
			    
				
				model.addAttribute("message", pictVO.getName()+"님 환영합니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/");
				return "pict/admin/message";
				
				
			}
			else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/user_login.do");
				return "pict/admin/message";
			}
		}
		else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/user_login.do");
			return "pict/admin/message";
		}
	}
	
	//관리자
	@RequestMapping(value = "/pict_main.do")
	public String pict_main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpSession session, RedirectAttributes rttr) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		System.out.println(sessions);
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		else {
			String user_id = (String)request.getSession().getAttribute("id");
			if(request.getSession().getAttribute("id") != null) {
				adminVO.setAdminId((String)request.getSession().getAttribute("id"));
				adminVO = adminService.get_user_info(adminVO);
				model.addAttribute("adminVO", adminVO);
			}
		
			return "redirect:/board/board_list.do";
		
		}
	}
	
	@RequestMapping(value = "/pict_login.do")
	public String login_main(@ModelAttribute("searchVO") AdminVO adminVO, HttpServletRequest request, ModelMap model, HttpServletResponse response) throws Exception {
		String userAgent = request.getHeader("user-agent");
		String sessions = (String)request.getSession().getAttribute("id");
		boolean mobile1 = userAgent.matches( ".*(iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson).*");
		boolean mobile2 = userAgent.matches(".*(LG|SAMSUNG|Samsung).*"); 
		if (mobile1 || mobile2) {
		    //여기 모바일일 경우
			System.out.println("피씨");
			model.addAttribute("message", "PC에서만 사용이 가능합니다.");
			model.addAttribute("retType", ":exit");
			return "pict/main/message";
		}
		
		
		if(sessions == null || sessions == "null") {
			return "pict/admin/login";
		}
		else {
			//나중에 여기 계정별로 리다이렉트 분기처리
			return "redirect:/board/board_list.do";
			
		}
			
	}
	
	@RequestMapping(value = "/login.do")
	public String login(@ModelAttribute("adminVO") AdminVO adminVO, HttpServletRequest request,  ModelMap model) throws Exception {
		//처음 드러와서 세션에 정보있으면 메인으로 보내줘야함
		String inpuId = adminVO.getAdminId();
		String inputPw = adminVO.getAdminPw();
		
		adminVO = adminService.get_user_info(adminVO);

		if (adminVO != null && adminVO.getId() != null && !adminVO.getId().equals("")) {
			String user_id = adminVO.getId();
			String enpassword = encryptPassword(inputPw, inpuId);	//입력비밀번호
			
			if(enpassword.equals(adminVO.getPassword())) {
				request.getSession().setAttribute("id", adminVO.getId());
				request.getSession().setAttribute("name", adminVO.getName());
				request.getSession().setAttribute("depart", adminVO.getDepart());

				String ip = request.getRemoteAddr();
			    DateFormat format2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			    String now = format2.format(Calendar.getInstance().getTime());
			    
			    adminVO.setLast_login_ip(ip);
			    adminVO.setLast_login_date(now);
			    adminService.insert_login_info(adminVO);
			    
			    adminVO.setAdminId(user_id);
			    adminVO = adminService.get_user_info(adminVO);
			    
				return "redirect:/pict_main.do";
				
			}
			else {
				model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
				model.addAttribute("retType", ":location");
				model.addAttribute("retUrl", "/pict_login.do");
				return "pict/admin/message";
			}
		}
		else {
			model.addAttribute("message", "입력하신 정보가 일치하지 않습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/pict_login.do");
			return "pict/admin/message";
		}
	}
	
	@RequestMapping(value = "/logout.do")
	public String logout(@ModelAttribute("searchVO") PictVO pictVO, HttpServletRequest request,  ModelMap model) throws Exception {
		request.getSession().setAttribute("id", null);
		request.getSession().setAttribute("name", null);
		
		return "redirect:/pict_login.do";
		
	}
	
	//공지사항   
    @RequestMapping(value = "/board/board_list.do")
	public String reference_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		List<?> reference_list = pictService.board_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("size", reference_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/board_list";
	}
	@RequestMapping(value = "/board/board_register.do")
	public String reference_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.board_list_one(pictVO);
			pictVO.setSaveType("update");
			
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/admin/board_register";
	}
	@RequestMapping(value = "/board/board_save.do", method = RequestMethod.POST)
	public String reference_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file1") MultipartFile attach_file1,
			@RequestParam("attach_file2") MultipartFile attach_file2,
			@RequestParam("attach_file3") MultipartFile attach_file3,
			@RequestParam("attach_file4") MultipartFile attach_file4,
			@RequestParam("attach_file5") MultipartFile attach_file5) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		if(attach_file1.getSize() != 0) {	//애드벌룬
			String uploadPath = fileUpload(request, attach_file1, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_1(filepath+filename);
		}
		if(attach_file2.getSize() != 0) {	//애드벌룬
			String uploadPath = fileUpload(request, attach_file2, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_2(filepath+filename);
		}
		if(attach_file3.getSize() != 0) {	//애드벌룬
			String uploadPath = fileUpload(request, attach_file3, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_3(filepath+filename);
		}
		if(attach_file4.getSize() != 0) {	//애드벌룬
			String uploadPath = fileUpload(request, attach_file4, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_4(filepath+filename);
		}
		if(attach_file5.getSize() != 0) {	//애드벌룬
			String uploadPath = fileUpload(request, attach_file5, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_5(filepath+filename);
		}
		
		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.board_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/board/board_list.do");
			return "pict/admin/message";
		}
		else {
			pictService.board_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/board/board_list.do");
			return "pict/admin/message";	
		}
		
	}	
	@RequestMapping(value = "/board/board_delete.do")
	public String board_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.board_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/board/board_list.do");
		return "pict/admin/message";
		
	}
	@RequestMapping(value = "/board/board_att_del.do")
	public String board_att_del(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		String idx = pictVO.getIdx()+"";
		 
		pictService.board_att_del(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/board/board_register.do?idx="+idx);
		return "pict/admin/message";
		
	}
	
	
	//참가정보 - 참가팀
	@RequestMapping(value = "/team/team_list.do")
	public String team_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.team_list_cnt(pictVO);
		System.out.println(totalCnt);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
		
		List<?> reference_list = pictService.team_list(pictVO);

		model.addAttribute("resultList", reference_list);
		model.addAttribute("board_cnt", totalCnt);
		
		
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/team_list";
	}
	@RequestMapping(value = "/team/team_register.do")
	public String team_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.team_list_one(pictVO);
			pictVO.setSaveType("update");
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/admin/team_register";
	}
	@RequestMapping(value = "/team/team_save.do", method = RequestMethod.POST)
	public String team_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request,
			@RequestParam("attach_file1") MultipartFile attach_file1) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
		
		if(attach_file1.getSize() != 0) {	//팀 파일
			String uploadPath = fileUpload(request, attach_file1, (String)request.getSession().getAttribute("id"));
			String filepath = "/user1/upload_file/hackathon/";
			String filename = uploadPath.split("#####")[1];
			pictVO.setFile_url(filepath+filename);
		}
	
		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.team_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/team/team_list.do");
			return "pict/admin/message";
		}
		else {
			pictService.team_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/team/team_list.do");
			return "pict/admin/message";	
		}
		
	}	
	@RequestMapping(value = "/team/team_delete.do")
	public String team_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.team_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/team/team_list.do");
		return "pict/admin/message";
		
	}
	
	//참가정보 - 참가자
	@RequestMapping(value = "/user/user_list.do")
	public String user_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		int limitNumber = 20;
		pictVO.setLimit(limitNumber);
		Integer pageNum = pictVO.getPageNumber();
		if(pageNum == 0) {
			pictVO.setPageNumber(1);
			pageNum = 1;
		}
		int startNum = (pageNum - 1) * limitNumber;
		pictVO.setStartNumber(startNum);
		Integer totalCnt = pictService.user_list_cnt(pictVO);
		int lastPageValue = (int)(Math.ceil( totalCnt * 1.0 / 20 )); 
		pictVO.setLastPage(lastPageValue);
		Integer s_page = pageNum - 4;
		Integer e_page = pageNum + 5;
		if (s_page <= 0) {
			s_page = 1;
			e_page = 10;
		} 
		if (e_page > lastPageValue){
			e_page = lastPageValue;
		}
		pictVO.setStartPage(s_page);
		pictVO.setEndPage(e_page);
		
	
		List<?> reference_list = pictService.user_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("size", reference_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/user_list";
	}
	@RequestMapping(value = "/user/user_register.do")
	public String user_register(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
		
		if(pictVO.getIdx() != 0) {
			//수정
			pictVO = pictService.user_list_one(pictVO);
			pictVO.setSaveType("update");
		}
		else {
			pictVO.setSaveType("insert");
		}
		
		model.addAttribute("pictVO", pictVO);
		return "pict/admin/user_register";
	}
	@RequestMapping(value = "/user/user_save.do", method = RequestMethod.POST)
	public String user_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, MultipartHttpServletRequest request) throws Exception {
		String sessions = (String)request.getSession().getAttribute("id");
		
		if(sessions == null || sessions == "null") {
			return "redirect:/pict_login.do";
		}
	
		if(pictVO.getSaveType() != null && pictVO.getSaveType().equals("update")) {
			pictService.user_update(pictVO);
			model.addAttribute("message", "정상적으로 수정되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/user/user_list.do");
			return "pict/admin/message";
		}
		else {
			pictService.user_insert(pictVO);
			model.addAttribute("message", "정상적으로 저장되었습니다.");
			model.addAttribute("retType", ":location");
			model.addAttribute("retUrl", "/user/user_list.do");
			return "pict/admin/message";	
		}
		
	}	
	@RequestMapping(value = "/user/user_delete.do")
	public String user_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.user_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/user/user_list.do");
		return "pict/admin/message";
		
	}
	
	
	//파일함정보
	@RequestMapping(value = "/file/file_list.do")
	public String file_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		List<?> reference_list = pictService.file_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("size", reference_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/user_list";
	}
	@RequestMapping(value = "/file/file_delete.do")
	public String file_delete(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		
		pictService.file_delete(pictVO);
		
		model.addAttribute("message", "정상적으로 삭제되었습니다.");
		model.addAttribute("retType", ":location");
		model.addAttribute("retUrl", "/file/file_list.do");
		return "pict/admin/message";
		
	}
	
	
	//심사정보 - 청중투표
	@RequestMapping(value = "/vote/vote_list.do")
	public String vote_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		List<?> reference_list = pictService.vote_user_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("size", reference_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/vote_list";
	}
	
	//심사정보 - 심사위원
	@RequestMapping(value = "/judge/judge_list.do")
	public String judge_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {
		String session = (String)request.getSession().getAttribute("id");
		if(session == null || session == "null") {
			return "redirect:/pict_login.do";
		}
		pictVO.setUser_id(session);
	
		List<?> reference_list = pictService.judge_list(pictVO);
		model.addAttribute("resultList", reference_list);
		model.addAttribute("size", reference_list.size());
		model.addAttribute("pictVO", pictVO);
		
		return "pict/admin/judge_list";
	}
	
	
	//투표테스트
	@RequestMapping(value = "/vote/vote_test.do")
	public String vote_test(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request) throws Exception {

		return "pict/admin/vote_list";
	}
	
	@RequestMapping(value = "/vote/vote_save.do", method = RequestMethod.POST)
	@ResponseBody
	public String vote_save2(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request,
			 @RequestBody Map<String, Object> param) throws Exception {

		String target_id = param.get("target_id").toString();
		pictVO.setTarget_id(target_id);
		
		pictService.vote_insert(pictVO);
		
		return "Y";
	}	
	
	
	//메소드
	public static String encryptPassword(String password, String id) throws Exception {
 		if (password == null) return "";
 		if (id == null) return ""; // KISA 보안약점 조치 (2018-12-11, 신용호)
 		byte[] hashValue = null; // 해쉬값
 	
 		MessageDigest md = MessageDigest.getInstance("SHA-256");
 		md.reset();
 		md.update(id.getBytes());
 		hashValue = md.digest(password.getBytes());
 	
 		return new String(Base64.encodeBase64(hashValue));
 	}
 	public String fileUpload(MultipartHttpServletRequest request, MultipartFile uploadFile, String target) {
     	String path = "";
     	String fileName = "";
     	OutputStream out = null;
     	PrintWriter printWriter = null;
     	long fileSize = uploadFile.getSize();
     	try {
     		fileName = uploadFile.getOriginalFilename();
     		byte[] bytes = uploadFile.getBytes();
     		
 			path = getSaveLocation(request, uploadFile);
     		
     		
     		File file = new File(path);
     		if(fileName != null && !fileName.equals("")) {
     			if(file.exists()) {
     				file = new File(path + fileName);
     			}
     		}
     		out = new FileOutputStream(file);
     		out.write(bytes);
     		
     		
     	}
     	catch(Exception e) {
     		e.printStackTrace();
     	}
     	
     	return path + "#####" + fileName;
    }
 	private String getSaveLocation(MultipartHttpServletRequest request, MultipartFile uploadFile) {
     	String uploadPath = "/user1/upload_file/hackathon/";
     	//String uploadPath = "D:\\user1\\upload_file\\taekwondo\\";
     	return uploadPath;
    }
}
