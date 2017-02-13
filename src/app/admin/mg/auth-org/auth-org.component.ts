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

	constructor(
		private authOrgService: AuthOrgService,
		private utilService: UtilService,
		private fb: FormBuilder,
		private confirmationService: ConfirmationService
	) {};
	ngOnInit() {
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
		//定义权限菜单栏
		this.authItems = [{
			label: '保存',
			icon: 'fa-save',
			command: () => {
				// TODO
				console.log("save");
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
		this.selectedOrg = m;
		this.authOrgService.GetOrgAuth().subscribe((ret) => {
			var t = this.utilService.GetArray(this.trees, "children", "id", ret);
			this.selectedNodes = t;
		});
	};
}