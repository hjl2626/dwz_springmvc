package dwz.framework.jms;

import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;


/**
 * <strong>Title : DefaultMessageConverter<br></strong>
 * <strong>Description : </strong>@类注释说明写在此处@<br> 
 * <strong>Create on : 2011-11-1<br></strong>
 * <p>
 * <strong>Copyright (C) Ecointel Software Co.,Ltd.<br></strong>
 * <p>
 * @author peng.shi peng.shi@ecointellects.com<br>
 * @version <strong>Ecointel v1.0.0</strong><br>
 * <br>
 * <strong>修改历史:</strong><br>
 * 修改人		修改日期		修改描述<br>
 * -------------------------------------------<br>
 * <br>
 * <br>
 */
public class DefaultMessageConverter /*implements MessageConverter*/ {
	
	public Message toMessage(Object obj, Session session) throws JMSException {
		// check Type
		/*ActiveMQObjectMessage objMsg = (ActiveMQObjectMessage) session
				.createObjectMessage();
		HashMap<String, byte[]> map = new HashMap<String, byte[]>();
		try {
			// POJO must implements Seralizable
			ByteArrayOutputStream bos = new ByteArrayOutputStream();
			ObjectOutputStream oos = new ObjectOutputStream(bos);
			oos.writeObject(obj);
			map.put("POJO", bos.toByteArray());
			objMsg.setObjectProperty("Map", map);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return objMsg;*/
		return null;
	}

	//@SuppressWarnings("unchecked")
	public Object fromMessage(Message msg) throws JMSException {
		/*if (msg instanceof ObjectMessage) {
			HashMap<String, byte[]> map = (HashMap<String, byte[]>) ((ObjectMessage) msg).getObjectProperty("Map");
			try {
				// POJO must implements Seralizable
				ByteArrayInputStream bis = new ByteArrayInputStream(
						map.get("POJO"));
				ObjectInputStream ois = new ObjectInputStream(bis);
				return ois.readObject();
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			return null;
		} else {
			throw new JMSException("Msg:[" + msg + "] is not Map");
		}*/
		return null;
	}
}