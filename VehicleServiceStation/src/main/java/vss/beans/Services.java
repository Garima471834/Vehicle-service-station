package vss.beans;

public class Services {
	

	
	//service_id, provider_id, service_name, service_charge, description
	
	
		private int service_charge,service_id;
		private String provider_id,service_name,description;
		public int getService_charge() {
			return service_charge;
		}
		public void setService_charge(int service_charge) {
			this.service_charge = service_charge;
		}
		public int getService_id() {
			return service_id;
		}
		public void setService_id(int service_id) {
			this.service_id = service_id;
		}
		public String getProvider_id() {
			return provider_id;
		}
		public void setProvider_id(String provider_id) {
			this.provider_id = provider_id;
		}
		public String getService_name() {
			return service_name;
		}
		public void setService_name(String service_name) {
			this.service_name = service_name;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public Services(int service_charge, String provider_id, String service_name, String description) {
			super();
			this.service_charge = service_charge;
			this.provider_id = provider_id;
			this.service_name = service_name;
			this.description = description;
		}
		public Services() {
			super();
			
		}
		
	}


