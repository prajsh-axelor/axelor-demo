import com.axelor.app.AxelorModule;
import com.axelor.partner.db.repo.MyPartnerRepository;
import com.axelor.partner.db.repo.PartnerRepository;

public class PartnerModule extends AxelorModule{

	@Override
	  protected void configure() {
	    bind(PartnerRepository.class).to(MyPartnerRepository.class);
	  }
}
