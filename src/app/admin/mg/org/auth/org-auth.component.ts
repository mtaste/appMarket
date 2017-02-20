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
	MgOrgService
} from '../../index';
@Component({
	selector: 'app-org-auth',
	templateUrl: './org-auth.component.html',
	styleUrls: ['./org-auth.component.css']
})
export class OrgAuthComponent implements OnInit {
	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//列表菜单
	private billFuncs: MenuItem[];
	private keyword = "";
	//列表
	private billList = [];
	private selectedBill = {};
	private billTotals = 10;
	//详情
	private infoFuncs: MenuItem[];
	private billForm: FormGroup;
	//权限信息
	private orgAuthTrees: TreeNode[];
	private selectedOrgAuthNodes: TreeNode[];
	constructor(
		private confirmationService: ConfirmationService,
		private mgOrgService: MgOrgService,
		private utilService: UtilService,
		private fb: FormBuilder
	) {}

	ngOnInit() { //定义表单
		this.billForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'orgFlag': new FormControl('', Validators.required)
		});
		//定义操作菜单
		this.billFuncs = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var m = this.utilService.ClearObj(this.billForm.value);
				this.billForm.setValue(m);
				this.selectedOrgAuthNodes = [];
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var t = this.utilService.ClearObj(this.billForm.value);
				var m = this.utilService.CopyObj(t, this.selectedBill);
				this.billForm.setValue(m);
				//获取表单权限信息
				this.mgOrgService.GetBillOrgAuth().subscribe((ret) => {
					var t = this.utilService.GetArray(this.orgAuthTrees, "children", "id", ret);
					this.selectedOrgAuthNodes = t;
				});
			}
		}, {
			label: '删除',
			icon: 'fa-remove',
			command: () => {
				this.confirmationService.confirm({
					header: '删除提示',
					message: '您确定需要删除此记录?',
					accept: () => {
						var m = this.selectedBill;
						var index = this.utilService.GetArrayIndex(this.billList, "id", m["id"]);
						this.billList.splice(index, 1);
					}
				});
			}
		}];
		//定义信息操作菜单
		this.infoFuncs = [{
			label: '返回',
			icon: 'fa-backward',
			command: () => {
				this.step = 1;
			}
		}];
		//获取机构可授权权限列表
		this.mgOrgService.GetAuthList().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.orgAuthTrees = < TreeNode[] > data;
		});
	}

	//搜索表单
	SearchBill() {
		//TODO
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: "search"
		});
	};
	//获取列表
	LoadBillData(e) {
		this.mgOrgService.GetBillList().subscribe((ret) => {
			ret = ret.data;
			this.billList = ret.rows;
			this.billTotals = ret.total;
		});
	};
	//保存单据数据
	SaveOrgAuth() {

	};
}