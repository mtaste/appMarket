import {
	Component
} from '@angular/core';
import {
	lang
} from "../conf/conf";
import {
	I18nService
} from "angular2-i18n";
import {
	UtilService
} from "../shared/util.service";
import {
	UserService
} from "../user/user.service";
import {
	MenuItem
} from 'primeng/primeng';

@Component({
	selector: 'admin-app',
	templateUrl: './app.component.html',
	styleUrls: ['./app.component.css'],
	providers: [I18nService]
})
export class AppComponent {
	//Tabs
	private items: MenuItem[];
	private activeItem: MenuItem;
	//控制是否显示菜单
	private appCtrl = {
		showTopNav: false,
		showMenuNav: false
	};
	private menus = [];
	constructor(
		private i18n: I18nService,
		private userService: UserService,
		private utilService: UtilService) {
		this.i18n.init(lang);
		this.userService.GetUserMenu().subscribe((ret) => {
			var data = utilService.TransData(ret, "id", "parentId", "subtree");
			console.log(data);
			this.menus = data;
		});
		this.items = [];
	}
	ToggleMenu(e, t) {
		this.appCtrl[t] = !this.appCtrl[t];
		e.preventDefault();
	}
	MenusClick(m) {
		//打开页面
		if(m.authUrl) {
			if(!this.tabsIds[m.id]) {
				this.tabsIds[m.id] = "Y";
				m.label = m.name;
				this.items.push(m);
				this.activeItem = this.items[this.items.length - 1];
			} else {
				var index = this.utilService.GetArrayIndex(this.items, "id", m.id);
				this.activeItem = this.items[index];
			}
		}
	}
	tabsIds = {};
}