import {
	Component,
	OnInit
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
	Md5
} from "ts-md5/dist/md5";
import {
	AuthOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	MgUserService,
	AuthService,
	CrudService
} from '../index';
@Component({
	selector: 'admin-app-mg-user',
	templateUrl: './mg-user.component.html',
	styleUrls: ['./mg-user.component.css']
})
export class MgUserComponent implements OnInit {
	//菜单功能临时变量
	private t_menu = {};
	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//用户菜单
	private userFuncs: MenuItem[] = [];
	private keyword = "";
	//用户详情
	private infoFuncs: MenuItem[];
	private userForm: FormGroup;
	//用户列表
	private userList = [];
	private selectedUser = {};
	private userTotals = 10;

	constructor(
		private confirmationService: ConfirmationService,
		private mgUserService: MgUserService,
		private utilService: UtilService,
		private router: ActivatedRoute,
		private fb: FormBuilder,
		private authService: AuthService,
		private crudService: CrudService
	) {
		var menus = {
			add: (auth) => {
				this.t_menu = auth.item;
				this.step = 2;
				var m = this.utilService.ClearObj(this.userForm.value);
				this.userForm.setValue(m);
			},
			mod: (auth) => {
				this.t_menu = auth.item;
				this.step = 2;
				var t = this.utilService.ClearObj(this.userForm.value);
				var m = this.utilService.CopyObj(t, this.selectedUser);
				this.userForm.setValue(m);
			},
			remove: (auth) => {
				this.t_menu = auth.item;
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var m = this.selectedUser;
						this.crudService.DeleteData(
							auth.item.authUrl, m["id"],
							ret => {
								this.msgs.push({
									severity: 'success',
									summary: '提示',
									detail: "删除成功"
								});
								var index = this.utilService.GetArrayIndex(this.userList, "id", m["id"]);
								this.userList.splice(index, 1);
							});
					}
				});
			}
		};
		//菜单数据
		this.router.queryParams.subscribe((params) => {
			var id = params["id"];
			this.authService.GetAuthFunc(id, (ret) => {
				for(var k in menus) {
					if(ret[k]) {
						var m = ret[k];
						m.command = menus[k];
						this.userFuncs.push(m);
					}
				}
			});
		});
	};

	ngOnInit() {
		//定义用户表单
		this.userForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'userName': new FormControl('', Validators.required),
			'passWord': new FormControl('', Validators.compose([Validators.required, Validators.minLength(6)])),
			'mobile': new FormControl('', Validators.required)
		});
		//定义用户操作菜单

		//定义用户信息操作菜单
		this.infoFuncs = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}];
	};
	//搜索用户
	SearchUser() {
		this.LoadUserData({
			first: 0,
			rows: 9,
			keyword: this.keyword
		});
	};
	//获取用户列表
	LoadUserData(e) {
		var param = {
			page: e.first / e.rows + 1,
			rows: e.rows
		};
		e.keyword && (param["keyword"] = e.keyword);
		this.mgUserService.GetUserList(param, (ret) => {
			ret = ret.data;
			this.userList = ret.rows;
			this.userTotals = ret.total;
		});
	};
	//保存用户信息
	onSubmit(value) {
		var param = this.utilService.CopyObj(value, value);
		var pw = this.selectedUser["passWord"];
		if(param["passWord"] != pw) {
			pw = param["passWord"];
			pw = Md5.hashStr(pw).toString();
			param["passWord"] = pw
			value["passWord"] = pw;
		}
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
				this.userList.unshift(m);
			} else {
				for(var k in value) {
					this.selectedUser[k] && (this.selectedUser[k] = value[k]);
				}
			}
		});

	};

}