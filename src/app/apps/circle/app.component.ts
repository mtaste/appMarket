import {
	Router,
	Component,
	UtilService
} from '../index';
import {
	Title
} from '@angular/platform-browser';
import {
	lang
} from "../../conf/conf";
import {
	I18nService
} from "angular2-i18n";

import {
	MenuItem
} from 'primeng/primeng';

@Component({
	selector: 'apps-community-root',
	templateUrl: './app.component.html',
	styleUrls: ['./app.component.css'],
	providers: [I18nService]
})
export class AppComponent {
	//Tabs
	private items: MenuItem[];
	private homeMenu: MenuItem;
	private activeItem: MenuItem = {};
	private userInfo = {};
	private ct;
	//控制是否显示菜单
	private appCtrl = {
		showTopNav: false,
		showMenuNav: false,
		showAccountSetting: false
	};
	private menus = [];
	private menuId = {};
	constructor(
		private router: Router,
		private i18n: I18nService,
		private utilService: UtilService,
		private titleService: Title) {
		this.titleService.setTitle('圈子应用');
		this.ct = this.utilService;
		this.utilService.loadingCompont = false;
		this.i18n.init(lang);
		this.items = [];
		this.homeMenu = {
			label: 'home',
			icon: 'fa fa-bars',
			command: (a) => {
				this.ToggleMenu(a, 'showMenuNav');
			}
		};
		this.menus.push({
			id: "2",
			parentId: "1",
			name: "权限定义",
			authUrl: "/admin/mg/authDefine",
			authIcon: "fa-check"
		});
	};
	//点击按钮 
	ToggleMenu(e, t) {
		this.appCtrl[t] = !this.appCtrl[t];
		e.preventDefault && e.preventDefault();
	};
	//当前打开的菜单
	tabsIds = {};
	MenusClick(m) {
		this.appCtrl.showAccountSetting = false;
		if(m.id == 'loginOut') {
			this.LoginOut();
		};
		this.menuId = m.id;
		//打开页面
		if(m.authUrl) {
			//新增加Tab
			if(!this.tabsIds[m.id]) {
				this.tabsIds[m.id] = "Y";
				m.icon = "fa-remove";
				m.label = m.name;
				//点击菜单
				m.command = (ret) => {
					//点击关闭按钮
					var t = ret.originalEvent;
					var oj = t.target || t.srcElement;
					if(oj.className.indexOf("ui-menuitem-icon") >= 0) {
						this.RemoveTab(ret.item);
					} else {
						ret && ret.item && this.MenusClick(ret.item);
					}
				}
				this.items.push(m);
				this.SeleteLastTab();
			} else {
				//触发点击
				var index = this.utilService.GetArrayIndex(this.items, "id", m.id);
				var tm = this.items[index];
				this.activeItem = tm;
				//打开模块
				this.appCtrl.showMenuNav = false;
				this.GoRouter(tm);
			}
		}
	};
	//移除Tab中的一个
	RemoveTab(m) {
		var index = this.utilService.GetArrayIndex(this.items, "id", m.id);
		delete this.tabsIds[m.id];
		this.items.splice(index, 1);
		this.SeleteLastTab();
	};
	//选中最后一个Tab
	SeleteLastTab() {
		if(this.items.length <= 0) return;
		var tm = this.items[this.items.length - 1];
		this.MenusClick(tm);
	};
	//调转到对应的路由
	GoRouter(m) {
		//this.utilService.loadingCompont = true;
		var u = m.authUrl + "?id=" + m.id;
		if(this.router.isActive(u, true)) {
			return;
		}
		this.utilService.loadingCompont = true;
		this.router.navigateByUrl(u);
	};
	//退出
	LoginOut() {
		if(confirm('确认要退出系统?')) {
			this.router.navigateByUrl('/user/login');
		}
	};
}