import {
	Component,
	OnInit
} from '@angular/core';
import {
	TreeNode,
	MenuItem,
	ConfirmationService,
	Message,
	SelectItem
} from 'primeng/primeng';
import {
	AuthOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	MgUserService
} from '../index';
@Component({
	selector: 'admin-app-mg-user',
	templateUrl: './mg-user.component.html',
	styleUrls: ['./mg-user.component.css']
})
export class MgUserComponent implements OnInit {
	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//用户菜单
	private userFuncs: MenuItem[];
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
		private fb: FormBuilder
	) {};

	ngOnInit() {
		//定义用户表单
		this.userForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'userName': new FormControl('', Validators.required),
			'passWord': new FormControl('', Validators.required)
		});
		//定义用户操作菜单
		this.userFuncs = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var m = this.utilService.ClearObj(this.userForm.value);
				this.userForm.setValue(m);
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var t = this.utilService.ClearObj(this.userForm.value);
				var m = this.utilService.CopyObj(t, this.selectedUser);
				this.userForm.setValue(m);
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						console.log("Yes");
					}
				});
			}
		}];
		//定义用户信息操作菜单
		this.infoFuncs = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}, {
			label: '保存',
			icon: 'fa-save',
			command: () => {
				this.msgs.push({
					severity: 'success',
					summary: '提示',
					detail: "save"
				});
			}
		}];
	};
	//搜索用户
	SearchUser() {
		//TODO
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: "search"
		});
	};
	//获取用户列表
	LoadUserData(e) {
		this.mgUserService.GetUserList().subscribe((ret) => {
			ret = ret.data;
			this.userList = ret.rows;
			this.userTotals = ret.total;
		});
	};
	//保存用户信息
	onSubmit(value) {
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: JSON.stringify(value)
		});
	};

}