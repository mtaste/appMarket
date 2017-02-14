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
	FormControl
} from '../index';

@Component({
	selector: 'app-auth-org',
	templateUrl: './auth-org.component.html',
	styleUrls: ['./auth-org.component.css']
})
export class AuthOrgComponent implements OnInit {
	//权限树
	private trees: TreeNode[];
	private selectedNodes: TreeNode[];
	//菜单
	private orgItems: MenuItem[];
	private authItems: MenuItem[];
	//提示信息
	private msgs: Message[] = [];
	//机构列表
	private totalRecords = 10;
	private orgList = [];
	private selectedOrg = {};
	//机构信息
	private orgForm: FormGroup;

	constructor(
		private authOrgService: AuthOrgService,
		private utilService: UtilService,
		private fb: FormBuilder,
		private confirmationService: ConfirmationService
	) {};
	ngOnInit() {
		//定义提交表单
		this.orgForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'flag': new FormControl('', Validators.required)
		});
		//获取定义的数据
		this.authOrgService.GetAuthOrgList().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.trees = < TreeNode[] > data;

		});
		//定义菜单栏
		this.orgItems = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.display = true;
				this.orgForm.setValue({
					id: "",
					name: "",
					flag: ""
				});
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				this.display = true;
				var m = this.utilService.CopyObj(this.orgForm.value, this.selectedOrg);
				this.orgForm.setValue(m);
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						//TODO
						console.log(this.selectedOrg);
						console.log("Yes");
						this.msgs.push({
							severity: 'success',
							summary: '提示',
							detail: "del"
						});
					}
				});
			}
		}];
		//定义权限菜单栏
		this.authItems = [{
			label: '保存',
			icon: 'fa-save',
			command: () => {
				// TODO
				console.log("save");
				this.msgs.push({
					severity: 'success',
					summary: '提示',
					detail: "save"
				});
			}
		}];
		//机构列表信息

	};
	//select tree
	NodeSelect(e) {
		console.log(this.selectedNodes);
	};
	//获取机构信息
	LoadOrgListData(e) {
		this.authOrgService.GetOrgList().subscribe((ret) => {
			this.totalRecords = ret.total;
			this.orgList = ret.rows;
		});
	};
	//获取机构的权限信息
	OrgClick(m) {
		this.selectedNodes = [];
		this.selectedOrg = m;
		this.authOrgService.GetOrgAuth().subscribe((ret) => {
			var t = this.utilService.GetArray(this.trees, "children", "id", ret);
			this.selectedNodes = t;
		});
	};
	//搜索
	private keyword = "";
	SearchOrg() {
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: this.keyword
		});
	};
	//新增
	private display = false;
	onSubmit(value) {
		this.display = false;
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: JSON.stringify(value)
		});
		this.orgList.unshift(value);
	};
}