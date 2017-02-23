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
	AuthOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl,
	OrgDefineService,
	AuthService,
	CrudService
} from '../index';

@Component({
	selector: 'admin-app-org-define',
	templateUrl: './org-define.component.html',
	styleUrls: ['./org-define.component.css']
})
export class OrgDefineComponent implements OnInit {
	//菜单功能临时变量
	private t_menu = {};
	private step = 1;
	private depFuns: MenuItem[] = [];
	private depTrees: TreeNode[];
	private depNode: TreeNode;
	//提示信息
	private msgs: Message[] = [];
	//部门信息
	private orgForm: FormGroup;
	//职务列表
	private jobFuns: MenuItem[] = [];
	private jobTotal = 10;
	private jobList = [];
	private selectedJob = {};
	//职务信息
	private jobInfoFuns: MenuItem[];
	private jobForm: FormGroup;
	//职务权限信息
	private jobAuthTrees: TreeNode[];
	private selectedJobAuthNodes: TreeNode[];
	//用户信息
	private userFuns: MenuItem[];
	private selectedUsers = [];
	private userDisplay = false;
	//可选择用户信息
	private chooseUsers = [];
	private chooseUserList = [];
	private chooseUserTotal = 10;
	//=================================
	constructor(
		private authOrgService: AuthOrgService,
		private utilService: UtilService,
		private fb: FormBuilder,
		private confirmationService: ConfirmationService,
		private orgDefineService: OrgDefineService,
		private authService: AuthService,
		private router: ActivatedRoute,
		private crudService: CrudService
	) {

		//定义部门按钮功能
		var menus = {
			add: (auth) => {
				this.t_menu = auth.item;
				this.display = true;
				var m = this.depNode;
				if(!m) {
					return;
				};
				this.orgForm.setValue({
					id: "",
					name: "",
					parentId: m["id"],
					parentName: m["name"]
				});
				this.msgs.push({
					severity: 'success',
					summary: '提示',
					detail: "plus"
				});
			},
			mod: (auth) => {
				this.display = true;
				this.t_menu = auth.item;
				var m = this.utilService.CopyObj(this.orgForm.value, this.depNode);
				var parent = this.depNode.parent;
				parent && (m["parentName"] = parent["name"]) && (this.orgForm.setValue(m));
			},
			remove: (auth) => {
				this.t_menu = auth.item;
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var id = this.depNode["id"];
						this.crudService.DeleteData(
							auth.item.authUrl, id,
							ret => {
								this.msgs.push({
									severity: 'success',
									summary: '提示',
									detail: "删除成功"
								});
								this.utilService.DeleteTree(this.depTrees, "children", "id", [this.depNode]);
								this.jobList = [];
							});
					}
				});
			}
		};
		//定义职务功能
		var jobMenu = {
			addRole: (auth) => {
				this.t_menu = auth.item;
				this.step = 2;
				//给职务赋值
				var temp = this.depNode;
				var tm = this.utilService.ClearObj(this.jobForm.value);
				temp && (tm["deptId"] = temp["id"]) && (tm["deptName"] = temp["name"]);
				this.jobForm.setValue(tm);
			},
			modRole: (auth) => {
				this.t_menu = auth.item;
				var m = this.selectedJob;
				if(!m["id"]) return;
				this.step = 2;
				//给职务赋值
				var temp = this.depNode;
				var tm = this.utilService.ClearObj(this.jobForm.value);
				m && (tm["id"] = m["id"]) && (tm["name"] = m["name"]);
				temp && (tm["deptId"] = temp["id"]) && (tm["deptName"] = temp["name"]);
				this.jobForm.setValue(tm);
			},
			removeRole: (auth) => {
				this.t_menu = auth.item;
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var id = this.selectedJob["id"];
						this.crudService.DeleteData(
							auth.item.authUrl, id,
							ret => {
								this.msgs.push({
									severity: 'success',
									summary: '提示',
									detail: "删除成功"
								});
								var index = this.utilService.GetArrayIndex(this.jobList, "id", id);
								this.jobList.splice(index, 1);
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
						this.depFuns.push(m);
					}
				}
				for(var k in jobMenu) {
					if(ret[k]) {
						var m = ret[k];
						m.command = jobMenu[k];
						this.jobFuns.push(m);
					}
				}
			});
		});
	};
	ngOnInit() {
		//定义部门表单
		this.orgForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'parentId': new FormControl(''),
			'parentName': new FormControl({
				value: "",
				disabled: true
			})
		});
		//获取部门信息
		this.orgDefineService.GetOrgDefine((ret) => {
			ret = ret.data;
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.depTrees = < TreeNode[] > data;
		});
		//定义职务信息菜单
		this.jobInfoFuns = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}];
		//定义职务表单
		this.jobForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'deptId': new FormControl(''),
			'deptName': new FormControl({
				value: "",
				disabled: true
			})
		});
		//获取权限列表
		this.orgDefineService.GetOrgAuthList().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.jobAuthTrees = < TreeNode[] > data;
		});
		//定义用户菜单功能
		this.userFuns = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.userDisplay = true;
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				var d = {};
				for(var i in this.selectedUsers) {
					var m = this.selectedUsers[i];
					d[m["id"]] = "Y";
				};
				var temp = [];
				for(var k in this.userList) {
					var m = this.userList[k];
					if(d[m["id"]] == "Y") {
						continue;
					};
					temp.push(m);
				};
				this.userList = temp;
				this.selectedUsers = [];
			}
		}];
	};
	//选择部门======================
	NodeSelect(e) {
		//获取职务列表
		this.LoadJobListData({
			first: 0,
			rows: 9
		});
		//获取用户列表
		this.LoadUserData({});
	};
	//部门功能=====================
	private display = false;
	onSubmit(value) {
		//保存数据
		this.crudService.SaveData(this.t_menu["authUrl"], value, (ret) => {
			this.display = false;
			this.msgs.push({
				severity: 'success',
				summary: '提示',
				detail: "保存成功"
			});
			if(!value["id"]) {
				value["id"] = ret.data;
				var m = this.utilService.CopyObj(value, value);
				!this.depNode.children && (this.depNode.children = []);
				this.depNode.children.push(m);
			} else {
				for(var k in value) {
					this.depNode[k] = value[k];
				}
			}
		});

	};
	//职务信息==========================
	//获取机构信息
	LoadJobListData(e) {
		var param = {
			page: e.first / e.rows + 1,
			rows: e.rows
		};
		this.depNode && (param["deptId"] = this.depNode["id"]);
		this.orgDefineService.GetJobList(param, (ret) => {
			this.selectedJob = {};
			ret = ret.data;
			this.jobTotal = ret.total;
			this.jobList = ret.rows;
		});
	};
	//获取机构的权限信息
	JobClick(m) {
		this.selectedJob = m;
		//获取职务权限信息
		this.orgDefineService.GetOrgJobAuth().subscribe((ret) => {
			var t = this.utilService.GetArray(this.jobAuthTrees, "children", "id", ret);
			this.selectedJobAuthNodes = t;
		});
	};
	//搜索
	private jobKeyword = "";
	SearchJob() {
		//TODO
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: this.jobKeyword
		});
	};
	//===============================
	//用户列表信息====================
	private userList = [];
	private userTotals = 20;
	LoadUserData(e) {
		if(!this.depNode) return;
		this.orgDefineService.GetDepUserList().subscribe((ret) => {
			ret = ret.data;
			this.userList = ret.rows;
			this.userTotals = ret.total;
		});

	};
	//获取可选择用户列表信息
	LoadChooseUserData(e) {
		this.orgDefineService.GetUserList().subscribe((ret) => {
			ret = ret.data;
			this.chooseUserList = ret.rows;
			this.chooseUserTotal = ret.total;
		});
	};
	//搜索可选择用户信息
	private userKeyword = "";
	SearchChooseUser() {
		//TODO
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: this.userKeyword
		});
	};
	//选择用户后确定按钮 
	ChooseUser() {
		//TODO
		this.userDisplay = false;
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: "ChooseUser"
		});
		for(var k in this.chooseUsers) {
			var m = this.chooseUsers[k];
			this.userList.unshift(m);
		};
	};
	//保存机构权限信息
	SaveOrgAuth() {
		var value = this.jobForm.value;
		//保存数据
		this.crudService.SaveData(this.t_menu["authUrl"], value, (ret) => {
			this.msgs.push({
				severity: 'success',
				summary: '提示',
				detail: "保存成功"
			});
			if(!value["id"]) {
				value["id"] = ret.data;
				this.jobList.unshift(value);
			} else {
				for(var k in value) {
					this.selectedJob[k] = value[k];
				}
			}
		});
	};
}