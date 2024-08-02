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
import pict_admin.service.TestVO;

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
	
	
	@GetMapping("api/vote_list2.do")
	@ResponseBody
	public Map<String, Object> vote_list2(HttpServletResponse response, HttpServletRequest request, @ModelAttribute("searchVO") TestVO testVO, ModelMap model) throws Exception {
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Content-Type", "application/json");
		response.setContentType("application/json;charset=UTF-8");
		response.setCharacterEncoding("utf-8");
		response.setHeader("Access-Control-Allow-Methods", "GET");

		Map<String, Object> resultMap = new HashMap<String, Object>();
		List<TestVO> coinList = pictService.vote_list(testVO);

		for(int i=0; i<coinList.size(); i++) {
			Map<String, Object> obj = new HashMap<>();
			obj.put("cnt", coinList.get(i).getCnt());
			obj.put("title", coinList.get(i).getTitle());
			resultMap.put(String.valueOf(i + 1), obj);
		}
		
		if(coinList.size() < 10) {
			for (int j = coinList.size() + 1; j <= 10; j++) {
				Map<String, Object> obj = new HashMap<>();
				obj.put("cnt", 0);
				obj.put("title", "팀명"+ j);
				resultMap.put(String.valueOf(j), obj);
			}
		}
		return resultMap;
		
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