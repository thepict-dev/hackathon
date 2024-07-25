package pict_admin.web;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import pict_admin.service.PictService;
import pict_admin.service.PictVO;
import pict_admin.service.AdminService;
import pict_admin.service.AdminVO;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;

import org.apache.commons.codec.binary.Base64;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class apiController {
	@Resource(name = "pictService")
	private PictService pictService;
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	@GetMapping("api/vote_list.do")
	@ResponseBody
	public void inventory_list(HttpServletResponse response, HttpServletRequest request, @ModelAttribute("searchVO") PictVO pictVO, ModelMap model, @ModelAttribute("adminVO") AdminVO adminVO) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/json");
		response.setContentType("application/json;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "GET");
		
		String user_id = request.getParameter("user_id");
		String type = request.getParameter("type");
		
		pictVO.setUser_id(user_id);
		pictVO.setType(type);
		ArrayList<Map<String, Object>> list = new ArrayList();
		

		List<PictVO> coinList = pictService.vote_list(pictVO);
		for(PictVO a : coinList){
			Map<String, Object> map = new HashMap<>();
			map.put("title" , a.getTitle()); 
			map.put("cnt" , Integer.parseInt(a.getCnt()));
			list.add(map);
		}
		
		
		PrintWriter out = response.getWriter();
		JSONArray js = JSONArray.fromObject(list);
		out.print(js);
		out.flush();
		
		
	}
	
	@GetMapping("api/vote_list2.do")
	@ResponseBody
	public void vote_list2(HttpServletResponse response, HttpServletRequest request, @ModelAttribute("searchVO") PictVO pictVO, ModelMap model, @ModelAttribute("adminVO") AdminVO adminVO) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/json");
		response.setContentType("application/json;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "GET");
		
		String user_id = request.getParameter("user_id");
		String type = request.getParameter("type");
		
		pictVO.setUser_id(user_id);
		pictVO.setType(type);
		ArrayList<Map<String, Object>> list = new ArrayList();

		Map<String, Integer> resultMap = new HashMap<>();
		List<PictVO> coinList = pictService.vote_list(pictVO);
		for(PictVO a : coinList){
			
			resultMap.put(a.getTitle(), Integer.parseInt(a.getCnt()));
		}
		
		
		List<Map.Entry<String, Integer>> list2 = new ArrayList<>(resultMap.entrySet());
		list2.sort(Map.Entry.<String, Integer>comparingByValue().reversed());
		
		Map<String, Integer> sortedMap = new LinkedHashMap<>();
		for (Map.Entry<String, Integer> entry : list2) {
		    sortedMap.put(entry.getKey(), entry.getValue());
		}
		if(list2.size() < 10) {
			for(int i=1; i<=10 - list2.size(); i++) {
				System.out.println("여기 몇번탈까?");
				sortedMap.put("팀명"+i, 0);
			}
		}
		
		String json = new ObjectMapper().writeValueAsString(sortedMap);

		PrintWriter out = response.getWriter();
		
		out.print(json);
		out.flush();
		
		
	}
	
	
	@SuppressWarnings("null")
	@PostMapping("api/vote_insert.do")
	@ResponseBody
	public void save_avata(HttpServletResponse response, HttpServletRequest request, @ModelAttribute("searchVO") PictVO pictVO, ModelMap model, @ModelAttribute("adminVO") AdminVO adminVO) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/xml");
		response.setContentType("text/xml;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "POST");
		
		
		pictService.vote_insert(pictVO);
		JSONObject obj = new JSONObject();
		obj.put("response", "200");
		/*
		Map<String, Object> map = new HashMap<>();
		map.put("response", "200");

		map.put("cloth_id" , pictVO.getCloth_id());
		map.put("face_id" , pictVO.getFace_id());
		map.put("hair_id" , pictVO.getHair_id());
		map.put("shoes_id" , pictVO.getShoes_id());
		map.put("body" , pictVO.getBody());
*/	
		
		PrintWriter out = response.getWriter();
		//JSONArray js = JSONArray.fromObject(map);
		out.print(obj);
		out.flush();
	}
	
	@PostMapping("api/attendance_save.do")
	@ResponseBody
	public void attendance_save(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/xml");
		response.setContentType("text/xml;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "POST");
		
		SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String now = sp.format(new Date());
		
		
		String name = request.getParameter("name");
		String std_num = request.getParameter("std_num");
		String in_out = request.getParameter("in_out");
		String week_count = request.getParameter("week_count");
		String week_cha = request.getParameter("week_cha");
		String title = request.getParameter("title");
		
		
		pictVO.setWeek_cha(week_cha);
		pictVO.setWeek_count(week_count);
		pictVO.setName(name);
		pictVO.setStd_num(std_num);
		pictVO.setTitle(title);

		System.out.println(in_out);
		if(in_out.equals("in")) {
			pictVO.setIn_date(now);
			pictService.attendance_save(pictVO);
			
		}
		else {
			PictVO vo = pictService.attendance_select_one(pictVO);
			vo.setOut_date(now);
			pictService.attendance_save_update(vo);
		}
		
		PrintWriter out = response.getWriter();
		Map<String, Object> map = new HashMap<>();
		map.put("result", 200);
		JSONArray js = JSONArray.fromObject(map);
		out.print(js);
		out.flush();
	}

	@GetMapping("api/lecture_list.do")
	@ResponseBody
	public void lecture_list(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/xml");
		response.setContentType("text/xml;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "GET");
		List<PictVO> lecture_list = pictService.api_lecture_list(pictVO);
		
		ArrayList<Map<String, Object>> list = new ArrayList();
		for(PictVO a : lecture_list){
			Map<String, Object> map = new HashMap<>();
			map.put("idx" , a.getIdx()); 
			map.put("title" , a.getTitle());
			map.put("name" , a.getName());
			map.put("link_url" , a.getLink_url());
			list.add(map);
		}
		
		PrintWriter out = response.getWriter();
		JSONArray js = JSONArray.fromObject(list);
		out.print(js);
		out.flush();
	}
	
	@GetMapping("api/lecture_attendance.do")
	@ResponseBody
	public void lecture_attendance(@ModelAttribute("searchVO") PictVO pictVO, ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/xml");
		response.setContentType("text/xml;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "GET");
		
		String idx = request.getParameter("idx");
		pictVO.setIdx(Integer.parseInt(idx));
		List<PictVO> attendance_list = pictService.lecture_attendance_api(pictVO);
		
		ArrayList<Map<String, Object>> list = new ArrayList();
		for(PictVO a : attendance_list){
			Map<String, Object> map = new HashMap<>();
			map.put("idx" , a.getIdx()); 
			map.put("title" , a.getTitle());
			map.put("professor" , a.getProfessor());
			map.put("name" , a.getName());
			map.put("in_date" , a.getIn_date());
			map.put("out_date" , a.getOut_date());
			map.put("std_num" , a.getStd_num());
			map.put("timediff" , a.getTimediff());
			map.put("category_cnt" , a.getCategory_cnt());
			map.put("whole_timediff" , a.getWhole_timediff());
			
			list.add(map);
		}
		
		PrintWriter out = response.getWriter();
		JSONArray js = JSONArray.fromObject(list);
		out.print(js);
		out.flush();
	
	}

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

	
	/*
	 * //qr코드
	 * 
	 * @PostMapping("api/qrcode.do") public void barcode(@RequestParam("id") String
	 * id) throws Exception{ System.out.println("카카카카카"); String ccc = "1"; String
	 * c_id = encryptPassword("pict", ccc); String data =
	 * "http://192.168.1.22:8080/apicoupon.do?id=" + c_id; String path =
	 * "C:\\Users\\82105\\Desktop\\bc.png";
	 * 
	 * String charset = "UTF-8";
	 * 
	 * Map<EncodeHintType, ErrorCorrectionLevel> hashMap = new
	 * HashMap<EncodeHintType,ErrorCorrectionLevel>();
	 * 
	 * hashMap.put(EncodeHintType.ERROR_CORRECTION,ErrorCorrectionLevel.L);
	 * 
	 * createQR(data, path, charset, hashMap, 200, 200);
	 * System.out.println("QR Code Generated!!! "); }
	 * 
	 * @RequestMapping(value = "/apicoupon.do") public void
	 * zzzzz(@RequestParam("id") String id) throws Exception {
	 * System.out.println("드오나!"); }
	 * 
	 * public static void createQR(String data, String path, String charset, Map
	 * hashMap, int height, int width) throws WriterException, IOException{
	 * BitMatrix matrix = new MultiFormatWriter().encode(new
	 * String(data.getBytes(charset), charset), BarcodeFormat.QR_CODE, width,
	 * height); MatrixToImageWriter.writeToFile(matrix,
	 * path.substring(path.lastIndexOf('.') + 1), new File(path)); }
	 */
}