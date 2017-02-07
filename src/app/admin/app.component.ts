import {
	Component
} from '@angular/core';
import {
	lang
} from "../conf/conf";
import {
	I18nService
} from "angular2-i18n";
@Component({
	selector: 'admin-app',
	templateUrl: './app.component.html',
	styleUrls: ['./app.component.css'],
	providers: [I18nService]
})
export class AppComponent {
	//控制是否显示菜单
	appCtrl = {
		showTopNav: false,
		showMenuNav: false
	};
	constructor(private i18n: I18nService) {
		this.i18n.init(lang);
	}
	ToggleMenu(e, t) {
		this.appCtrl[t] = !this.appCtrl[t];
		e.preventDefault();
	}
}