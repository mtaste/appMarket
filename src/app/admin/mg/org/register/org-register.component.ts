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
	selector: 'app-org-register',
	templateUrl: './org-register.component.html',
	styleUrls: ['./org-register.component.css']
})
export class OrgRegisterComponent implements OnInit {

	//提示信息
	private msgs: Message[] = [];
	private step = 1;
	//列表菜单
	private orgFuncs: MenuItem[];
	private keyword = "";
	//详情
	private infoFuncs: MenuItem[];
	private billForm: FormGroup;
	//列表
	private orgBillList = [];
	private selectedBill = {};
	private billTotals = 10;

	constructor(
		private confirmationService: ConfirmationService,
		private mgOrgService: MgOrgService,
		private utilService: UtilService,
		private fb: FormBuilder
	) {};

	ngOnInit() {
		//定义表单
		this.billForm = this.fb.group({
			'id': new FormControl(''),
			'name': new FormControl('', Validators.required),
			'address': new FormControl('', Validators.required),
			'contacts': new FormControl('', Validators.required),
			'mobile': new FormControl('', Validators.required),
			'orgFlag': new FormControl('', Validators.required)
		});
		//定义操作菜单
		this.orgFuncs = [{
			label: '新增',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var m = this.utilService.ClearObj(this.billForm.value);
				this.billForm.setValue(m);
			}
		}, {
			label: '修改',
			icon: 'fa-plus',
			command: () => {
				this.step = 2;
				var t = this.utilService.ClearObj(this.billForm.value);
				var m = this.utilService.CopyObj(t, this.selectedBill);
				this.billForm.setValue(m);
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
						var index = this.utilService.GetArrayIndex(this.orgBillList, "id", m["id"]);
						this.orgBillList.splice(index, 1);
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
	};
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
			this.orgBillList = ret.rows;
			this.billTotals = ret.total;
		});
	};
	//保存信息
	onSubmit(value) {
		this.msgs.push({
			severity: 'success',
			summary: '提示',
			detail: JSON.stringify(value)
		});
		this.step = 1;
		var m = this.utilService.CopyObj(value, value);
		this.orgBillList.push(m);
	};
}