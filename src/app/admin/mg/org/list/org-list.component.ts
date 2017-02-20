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
	MgOrgService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl
} from '../../index';
@Component({
	selector: 'app-org-list',
	templateUrl: './org-list.component.html',
	styleUrls: ['./org-list.component.css']
})
export class OrgListComponent implements OnInit {
	//权限树
	private trees: TreeNode[];
	private selectedNode: TreeNode[];
	//提示信息
	private msgs: Message[] = [];
	//机构列表
	private totalRecords = 10;
	private orgList = [];
	private selectedOrg = {};

	constructor(
		private mgOrgService: MgOrgService,
		private utilService: UtilService,
		private fb: FormBuilder,
		private confirmationService: ConfirmationService
	) {};
	ngOnInit() {

	};
	//获取机构信息
	LoadOrgListData(e) {
		this.mgOrgService.GetOrgList().subscribe((ret) => {
			this.totalRecords = ret.total;
			this.orgList = ret.rows;
		});
	};
	//获取机构的权限信息
	OrgClick(m) {
		this.selectedOrg = m;
		this.mgOrgService.GetOrgAuth().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.trees = < TreeNode[] > data;
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
}