package com.firstgroup.iflytekstudaily.util.network;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import com.firstgroup.iflytekstudaily.bean.Daily;

import android.content.Context;
import android.widget.Toast;

public class HttpClientUtil {

	//�����ռ�
	private static final String SERVICE_NS = "http://iflysse.com/";
	//URL
	private static final String SERVICE_URL = "http://tool.iflysse.com/DailyReport.asmx";
	
	/**
	 * �������ӷ���
	 * @param methodName ��������
	 * @param parameters ��������
	 * @return
	 */
	public static String netResponse(String methodName,HashMap<String, Object>parameters){
		String result = null;
		
		// Ͷ���ŷ����
				HttpTransportSE ht = new HttpTransportSE(SERVICE_URL);
				// �����ŷ�
				final SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(
						SoapEnvelope.VER11);
				// �������˵���д����
				envelope.dotNet = true;
				// ����Ҫ�õķ���
				SoapObject soapObject = new SoapObject(SERVICE_NS, methodName);
				// ����
				if(parameters != null){
					Set<String> keys = parameters.keySet();
					for(String key:keys){
						soapObject.addProperty(key,parameters.get(key));
					}
				}
				// �ŷ�����body ����outputStream
				envelope.bodyOut = soapObject;

				try {
					ht.call(SERVICE_NS + methodName, envelope);
					if (envelope.getResponse() != null) {
						// JSONObject temp = (JSONObject) envelope.bodyIn;
						SoapObject response = (SoapObject) envelope.bodyIn;
						System.out.println(response.toString());
						System.out.println(response.getPropertyCount());
						result = response.getProperty(0).toString();
					}
				} catch (IOException e) {
					e.printStackTrace();
				} catch (XmlPullParserException e) {
					e.printStackTrace();
				}
		
		return result;
	}
	
	
	
	
	
	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	
//	// ����HttpClient����
//	public static HttpClient httpClient = new DefaultHttpClient();
//	public static final String USER_URL = "http://tool.iflysse.com/DailyService/WebService.aspx"; 
////	private static List<Map<String, String>> list = new ArrayList<Map<String,String>>();
////	private static Map<String, String> map= null ;
//    
//	/*
//	 * �����˷���������FutureTask<String>��ȡ���������õ�����Ӧ
//	 * @auther wang522
//	 */
//	public static String getLoginUser(final String massage) throws Exception {
//				
//		FutureTask<String> task = new FutureTask<String>(
//				new Callable<String>() {
//					@Override
//					public String call() throws Exception {
//						String result="";
//						
//						
//						HttpGet get = new HttpGet(USER_URL+massage);
//						// ִ��get����,���ҽ���response������
//						HttpResponse response = httpClient.execute(get);
//						
//						// ��ȡ���ؽ���������ж�״̬
//						if (response.getStatusLine().getStatusCode() == 200) {
//							// 200��������ɹ�,getEntityָ���ص�����
//							HttpEntity entity = response.getEntity();
//							if (entity != null) {
//												
//								result = EntityUtils.toString(entity,"gb2312");
//								get.abort();
//								entity.consumeContent();
//							}							
//						}
////						else if(response.getStatusLine().getStatusCode() == 500){
////							Toast.makeText(context, "����������ʧ��!",Toast.LENGTH_SHORT).show();
////						}
//						return result;
//					}
//				});
//		new Thread(task).start();
//		return task.get();
//
//	}
//	/*
//	 * ���ӷ���˵õ���ֻ��stateCode��message��JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static Map<String, String> turnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		Map<String, String> map= new HashMap<String, String>();
//		JSONObject jsonObject = new JSONObject(str);
//		// ÿ����¼���ɼ���Object�������
//
//		int stateCode = jsonObject.getInt("StateCode"); // ��ȡ�����Ӧ��ֵ
//		String message = jsonObject.getString("Message");
//
//		 // ��ŵ�MAP����
//		map.put("StateCode", stateCode + "");
//		map.put("Message", message);
//		
//		return map;
//	}
//	/*
//	 * ���ӷ���˵õ��Ľ����˵�JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static List<Map<String, String>> receiverTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		List<Map<String, String>> list = new ArrayList<Map<String,String>>();
//		JSONArray jsonArray = new JSONArray(str);
//		for (int i = 0; i < jsonArray.length(); i++) {  
//            JSONObject item = jsonArray.getJSONObject(i);
//		Map<String, String> map= new HashMap<String, String>();
//            
//		// ÿ����¼���ɼ���Object�������
//		String objectId=item.getString("ObjectID"); 
//		String empName=item.getString("EmpName");
//		String empAccount=item.getString("EmpAccount");
//		String receiveName=item.getString("ReceiveName");
//		String receiveAccount=item.getString("ReceiveAccount");
//		String receivePersonId=item.getString("ReceivePersonId");
//
//		
//		map = new HashMap<String, String>(); // ��ŵ�MAP����
//		map.put("ObjectID", objectId);
//		map.put("EmpName",empName);
//		map.put("EmpAccount",empAccount);
//		map.put("ReceiveName",receiveName);
//		map.put("ReceiveAccount",receiveAccount);
//		map.put("ReceivePersonId",receivePersonId);
//		list.add(map);
//		}
//		return list;
//	}
//	/*
//	 * ���ӷ���˵õ��Ľ����ձ���JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static Map<String, String> dairyTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		JSONObject jsonObject = new JSONObject(str);
//		Map<String, String> map= new HashMap<String, String>();
//        if(!jsonObject.has("StateCode")){	
//		String objectId=jsonObject.getString("ObjectID"); 
//		String sendTime=jsonObject.getString("SendTime");
//		String writerName=jsonObject.getString("WriterName");
//		String writerAccount=jsonObject.getString("WriterAccount");
//		
//		String todayJob=jsonObject.getString("TodayJob");
//		String tomorrowPlan=jsonObject.getString("TomorrowPlan");
//		String needCoordinate=jsonObject.getString("NeedCoordinate");
//		int isHadWrite=jsonObject.getInt("IsHadWrite");
//		
//		String dailyReportTime=jsonObject.getString("DailyReportTime");
//		String receiveName=jsonObject.getString("ReceiveNames");
//		String receiveAccount=jsonObject.getString("ReceiveAccount");
//		String receivePersonId=jsonObject.getString("ReceivePersonIDs");
//        
//		map.put("ObjectID", objectId);
//		map.put("SendTime",sendTime);
//		map.put("WriterName",writerName);
//		map.put("WriterAccount",writerAccount);
//		
//		map.put("TodayJob",todayJob);
//		map.put("TomorrowPlan",tomorrowPlan);
//		map.put("NeedCoordinate",needCoordinate);
//		map.put("IsHadWrite",isHadWrite+"");
//		
//		map.put("DailyReportTime",dailyReportTime);
//		map.put("ReceiveName",receiveName);
//		map.put("ReceiveAccount",receiveAccount);
//		map.put("ReceivePersonId",receivePersonId);
//        }
//		return map;
//	}
//	/*
//	 * ���״̬���ϵ�JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static Map<String, String> stateTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		JSONArray jsonArray = new JSONArray(str);
//		Map<String, String> map= new HashMap<String, String>();
//		
//		for (int i = 0; i < jsonArray.length(); i++) {  
//            JSONObject item = jsonArray.getJSONObject(i);
//		// ÿ����¼���ɼ���Object�������
//		String date=item.getString("Date"); 
//		int state = item.getInt("State");
//		map.put(date,state+"");
//		}
//		return map;
//		
//	}	
//	/*
//	 * ����������ѯ��JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static Map<String, String> searchNameTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		JSONObject jsonObject = new JSONObject(str);
//		// ÿ����¼���ɼ���Object�������
//		String id=jsonObject.getString("Id"); 
//		String name=jsonObject.getString("Name");
//		String account=jsonObject.getString("Account");
//
//		Map<String, String> map= new HashMap<String, String>(); // ��ŵ�MAP����
//		map.put("Id", id);
//		map.put("Name", name);
//		map.put("Account",account);
//		
//		return map;
//	}
//	/*
//	 * ��ȡ�ҵ���Ϣ��JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static Map<String, String> myInformTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		JSONObject jsonObject = new JSONObject(str);
//		// ÿ����¼���ɼ���Object�������
//		String objectId=jsonObject.getString("ObjectID"); 
//		String name=jsonObject.getString("Name");
//		String account=jsonObject.getString("Account");
//		String email=jsonObject.getString("Email");
//		boolean isNeedWrite=jsonObject.getBoolean("IsNeedWrite");
//
//		Map<String, String> map= new HashMap<String, String>(); // ��ŵ�MAP����
//		map.put("ObjectID", objectId);
//		map.put("Name", name);
//		map.put("Account",account);
//		map.put("Email",email);
//		map.put("IsNeedWrite",isNeedWrite+"");
//		
//		return map;
//	}
//	/*
//	 * ��ȡ�ձ��ļ��ϵ�JSon�ַ���ת��ΪJSon���󣬻�ȡ"������ʽ"��JSON����
//	 * @auther wang522
//	 */
//	public static List<Daily> dairyReportSetTurnToJSon(String str) throws JSONException{
//		// ���ص�������ʽ��һ��Object���ͣ����Կ���ֱ��ת����һ��Object
//		List<Daily> list = new ArrayList<Daily>();
//		JSONArray jsonArray = new JSONArray(str);
//		
//		for (int i = 0; i < jsonArray.length(); i++) {  
//				              	
//	    JSONObject item  = jsonArray.getJSONObject(i);
////		Map<String, String> map= new HashMap<String, String>(); // ��ŵ�MAP����
//		Daily daily = new Daily();
//		// ÿ����¼���ɼ���Object�������
////		String objectId=item.getString("ObjectID"); 
////		String sendTime=item.getString("SendTime");
////		String writerName=item.getString("WriterName");
////		String writerAccount=item.getString("WriterAccount");
////		
////		String todayJob=item.getString("TodayJob");
////		String tomorrowPlan=item.getString("TomorrowPlan");
////		String needCoordinate=item.getString("NeedCoordinate");
////		int isHadWrite=item.getInt("IsHadWrite");
////		
////		String dailyReportTime=item.getString("DailyReportTime");
////		String receiveName=item.getString("ReceiveNames");
////		String receiveAccount=item.getString("ReceiveAccount");
////		String receivePersonId=item.getString("ReceivePersonIDs");
//		
//		
//		daily.setObjectID(item.getString("ObjectID"));
//		daily.setIsHadWrite(item.getInt("IsHadWrite"));
//		daily.setNeedCoordinate(item.getString("NeedCoordinate"));
//		daily.setDailyReportTime(item.getString("DailyReportTime"));
//		daily.setReceiveAccount(item.getString("ReceiveAccount"));
//		daily.setReceiveNames(item.getString("ReceiveNames"));
//		daily.setReceivePersonIDs(item.getString("ReceivePersonIDs"));
//		daily.setSendTime(item.getString("SendTime"));
//		daily.setTodayJob(item.getString("TodayJob"));
//		daily.setTomorrowPlan(item.getString("TomorrowPlan"));
//		daily.setWriterAccount(item.getString("WriterAccount"));
//		daily.setWriterName(item.getString("WriterName"));
//		
//		
//		
//		
////		map.put("ObjectID", objectId);
////		map.put("SendTime",sendTime);
////		map.put("WriterName",writerName);
////		map.put("WriterAccount",writerAccount);
////		
////		map.put("TodayJob",todayJob);
////		map.put("TomorrowPlan",tomorrowPlan);
////		map.put("NeedCoordinate",needCoordinate);
////		map.put("IsHadWrite",isHadWrite+"");
////		
////		map.put("DailyReportTime",dailyReportTime);
////		map.put("ReceiveNames",receiveName);
////		map.put("ReceiveAccount",receiveAccount);
////		map.put("ReceivePersonIDs",receivePersonId);
////		list.add(map);
//		list.add(daily);
//		
//		}
//		
//		return list;
//	}	
//	
//	/*
//	 * ����״̬��stateCode�����û������Ӧ������
//	 * @auther wang522
//	 */
//	public static void showStateCode(int stateCode,Context context){
//		switch(stateCode){
//        case -2:
//        	Toast.makeText(context,"δ֪�쳣!",Toast.LENGTH_SHORT).show();
//        	break;
//        case -1:
//        	Toast.makeText(context,"ϵͳδ��ʼ��!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 0:
//        	Toast.makeText(context,"��¼�ɹ�!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 1:
//        	Toast.makeText(context,"��Ч��FunID!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 2:
//        	Toast.makeText(context,"������Ч!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 3:
//        	Toast.makeText(context,"����Ȩ����ϵͳ!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 4:
//        	Toast.makeText(context,"�û������������!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 5:
//        	Toast.makeText(context,"��Ч��Key!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 6:
//        	Toast.makeText(context,"�����˲���Ϊ��!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 7:
//        	Toast.makeText(context,"ԭʼ�����ṩ����!",Toast.LENGTH_SHORT).show();
//        	break;
//        case 8:
//        	Toast.makeText(context,"�����޸�ʧ��!",Toast.LENGTH_SHORT).show();
//        	break;
//        }
//	}
}
