import {
	Router,
	Component
} from '../shared/index';
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
	private menuId = {};
	constructor(
		private router: Router,
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
	};
	//点击按钮 
	ToggleMenu(e, t) {
		this.appCtrl[t] = !this.appCtrl[t];
		e.preventDefault();
	};
	//当前打开的菜单
	tabsIds = {};
	MenusClick(m) {
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
					if(t.offsetX <= 10) {
						this.RemoveTab(ret.item);
					} else {
						ret && ret.item && (this.menuId = ret.item.id);
					}
				}
				this.items.push(m);
				this.SeleteLastTab();
			} else {
				//触发点击
				var index = this.utilService.GetArrayIndex(this.items, "id", m.id);
				var tm = this.items[index];
				this.activeItem = tm;
				//打开模块,没有定义则不能打开
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
		var rs = this.getAllRouters();
		console.log(this.router);
		this.router.navigateByUrl(m.authUrl);
	};
	//get all routers 
	private getAllRouters() {
		var ret = {};
		var c = this.router.config;
		for(var i in c) {
			var t = c[i];
			ret[t.path] = "Y";
		}
		return ret;
	};
}