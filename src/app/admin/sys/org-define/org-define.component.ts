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
	OrgDefineService
} from '../index';

@Component({
	selector: 'admin-app-org-define',
	templateUrl: './org-define.component.html',
	styleUrls: ['./org-define.component.css']
})
export class OrgDefineComponent implements OnInit {
	private step = 1;
	private depFuns: MenuItem[];
	private depTrees: TreeNode[];
	private depNode: TreeNode;
	//提示信息
	private msgs: Message[] = [];
	//部门信息
	private orgForm: FormGroup;
	//职务列表
	private jobFuns: MenuItem[];
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
		private orgDefineService: OrgDefineService) {};
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
		//定义部门菜单栏
		this.depFuns = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				//TODO;
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
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				this.display = true;
				var m = this.utilService.CopyObj(this.orgForm.value, this.depNode);
				var parent = this.depNode.parent;
				parent && (m["parentName"] = parent["name"]) && (this.orgForm.setValue(m));
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
						this.utilService.DeleteTree(this.depTrees, "children", "id", [this.depNode]);
					}
				});
			}
		}];
		//获取部门信息
		this.orgDefineService.GetOrgDefine().subscribe((ret) => {
			ret = ret.data;
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.depTrees = < TreeNode[] > data;
		});
		//定义部门按钮功能
		//定义职务菜单栏
		this.jobFuns = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				//给职务赋值
				var temp = this.depNode;
				var tm = this.utilService.ClearObj(this.jobForm.value);
				temp && (tm["orgId"] = temp["id"]) && (tm["orgName"] = temp["name"]);
				this.jobForm.setValue(tm);
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				var m = this.selectedJob;
				if(!m["id"]) return;
				this.step = 2;
				//给职务赋值
				var temp = this.depNode;
				var tm = this.utilService.ClearObj(this.jobForm.value);
				m && (tm["id"] = m["id"]) && (tm["name"] = m["name"]);
				temp && (tm["orgId"] = temp["id"]) && (tm["orgName"] = temp["name"]);
				this.jobForm.setValue(tm);
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var m = this.selectedJob;
						var index = this.utilService.GetArrayIndex(this.jobList, "id", m["id"]);
						this.jobList.splice(index, 1);
					}
				});
			}
		}];
		//定义职务信息菜单
		this.jobInfoFuns = [{
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
				console.log(this.jobForm.value);
			}
		}];
		//定义职务表单
		this.jobForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'orgId': new FormControl(''),
			'orgName': new FormControl({
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
		this.LoadJobListData({});
		//获取用户列表
		this.LoadUserData({});
	};
	//部门功能=====================
	private display = false;
	onSubmit(value) {
		//TODO
		this.display = false;
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: JSON.stringify(value)
		});
		if(value["id"]) return;
		var m = this.utilService.CopyObj(value, value);
		!this.depNode.children && (this.depNode.children = []);
		this.depNode.children.push(m);
	};
	//职务信息==========================
	//获取机构信息
	LoadJobListData(e) {
		this.orgDefineService.GetJobList().subscribe((ret) => {
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
}