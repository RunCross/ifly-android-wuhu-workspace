package cross.run.test;

import java.util.Hashtable;

import org.ksoap2.serialization.KvmSerializable;
import org.ksoap2.serialization.PropertyInfo;

public class Product implements KvmSerializable{
	int id;
	String name;
	float price;
	public Product(){}
	public Product(int id,String name,float price){
		this.id=id;
		this.name=name;
		this.price=price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	@Override
	public Object getProperty(int arg0) {
		switch(arg0){
		case 0:
			return id;
		case 1:
			return name;
		case 2:
			return price;
		}
		return null;
	}
	@Override
	public int getPropertyCount() {
		return 3;
	}
	@Override
	public void getPropertyInfo(int arg0, Hashtable arg1, PropertyInfo arg2) {
		switch(arg0){
		case 0:			
			arg2.type = PropertyInfo.INTEGER_CLASS;
			arg2.name = "id";
			break;
		case 1:
			arg2.type = PropertyInfo.STRING_CLASS;
			arg2.name = "name";
			break;
		case 2:
			arg2.type = Float.class;
			arg2.name = "price";
			break;
		}
		
	}
	@Override
	public void setProperty(int arg0, Object arg1) {
		switch(arg0){
		case 0:			
			id = Integer.parseInt(arg1.toString());
			break;
		case 1:
			name = arg1.toString();
			break;
		case 2:
			price = Float.parseFloat(arg1.toString());
			break;
		}
	}
}