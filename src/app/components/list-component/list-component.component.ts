import {
	Component,
	OnInit,
	Input,
	Output,
	EventEmitter
} from '@angular/core';
import {
	ActivatedRoute
} from '@angular/router';
import {
	MenuItem,
	ConfirmationService,
	Message,
	SelectItem
} from 'primeng/primeng';
import {
	AuthService,
	CrudService,
	UtilService
} from '../index';
@Component({
	selector: 'app-list-component',
	templateUrl: './list-component.component.html',
	styleUrls: ['./list-component.component.css']
})
export class ListComponentComponent implements OnInit {
	//菜单功能临时变量
	private t_menu = {};
	//列表菜单
	private funcs: MenuItem[] = [];
	private keyword = "";
	//列表
	private listData = [];
	private selectedObj = {};
	private totals = 0;
	private t_funcs = {};
	@Input() title = "";
	@Input() list = {};
	@Input() menus = {};
	@Input() obj = {};
	@Output() initEvent: EventEmitter < any > = new EventEmitter();
	constructor(
		private router: ActivatedRoute,
		private authService: AuthService,
		private utilService: UtilService,
		private crudService: CrudService
	) {

	};

	ngOnInit() {
		this.initEvent.emit(this);
		//菜单数据
		this.router.queryParams.subscribe((params) => {
			var id = params["id"];
			this.authService.GetAuthFunc(id, (ret) => {
				for(var k in ret) {
					if(this.menus[k]) {
						var m = ret[k];
						m.command = (auth) => {
							this.t_menu = auth.item;
							var t = this.menus[this.t_menu["authValue"]];
							t && (t(auth, this.obj));
						}
						this.t_funcs[k] = m;
						this.funcs.push(m);
					}
				}
			});
		});
	};

	Search() {
		var page = this.utilService.GetPageInfo();
		this.LoadData(page);
	};

	LoadData(e) {
		var param = {
			page: e.first / e.rows + 1,
			rows: e.rows
		};
		this.keyword && (param["keyword"] = this.keyword);
		this.crudService.GetData(this.list['url'], param, (ret) => {
			ret = ret.data;
			this.listData = ret.rows;
			this.totals = ret.total;
		});
	};

}