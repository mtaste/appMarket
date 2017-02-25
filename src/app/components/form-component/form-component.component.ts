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
	TreeNode,
	MenuItem,
	ConfirmationService,
	Message,
	SelectItem
} from 'primeng/primeng';
import {
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	AuthService,
	CrudService,
	UtilService
} from '../index';
@Component({
	selector: 'app-form-component',
	templateUrl: './form-component.component.html',
	styleUrls: ['./form-component.component.css']
})
export class FormComponentComponent implements OnInit {
	//菜单功能临时变量
	private t_menu = {};
	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//列表菜单
	private funcs: MenuItem[] = [];
	private keyword = "";
	//详情
	private infoFuncs: MenuItem[];
	//列表
	private listData = [];
	private selectedObj = {};
	private totals = 0;
	//详情
	private formModel: FormGroup;

	@Input() menus = {};
	@Input() title = "";
	@Input() list = {};
	@Input() form = [];

	constructor(
		private router: ActivatedRoute,
		private authService: AuthService,
		private fb: FormBuilder,
		private utilService: UtilService,
		private crudService: CrudService
	) {

	};

	ngOnInit() {
		//菜单数据
		this.router.queryParams.subscribe((params) => {
			var id = params["id"];
			this.authService.GetAuthFunc(id, (ret) => {
				for(var k in this.menus) {
					if(ret[k]) {
						var m = ret[k];
						m.command = (auth) => {
							this.t_menu = auth.item;
							var t = this.menus[this.t_menu["authValue"]];
							t && (t(auth, this));
						}
						this.funcs.push(m);
					}
				}
			});
		});

		//定义信息操作菜单
		this.infoFuncs = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}];
		//初始化Form
		var f = {};
		for(var k in this.form) {
			var obj = this.form[k];
			if(!obj['vali']) {
				f[obj['model']] = new FormControl('');
			} else {
				f[obj['model']] = new FormControl('', obj['vali']);
			}
		};
		this.formModel = this.fb.group(f);
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

	onSubmit(value) {
		var param = this.utilService.CopyObj(value, value);
		//保存数据
		this.crudService.SaveData(this.t_menu["authUrl"], param, (ret) => {
			this.msgs.push({
				severity: 'success',
				summary: '提示',
				detail: JSON.stringify(value)
			});
			this.step = 1;
			if(!value["id"]) {
				value["id"] = ret.data;
				var m = this.utilService.CopyObj(value, value);
				this.listData.unshift(m);
			} else {
				for(var k in value) {
					this.selectedObj[k] && (this.selectedObj[k] = value[k]);
				}
			}
		});
	};

}