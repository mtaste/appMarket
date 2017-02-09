import {
	Component,
	OnInit
} from '@angular/core';
import {
	TreeNode
} from 'primeng/primeng';
import {
	AuthDefineService,
	UtilService,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl
} from '../index';

@Component({
	selector: 'app-auth-define',
	templateUrl: './auth-define.component.html',
	styleUrls: ['./auth-define.component.css']
})
export class AuthDefineComponent implements OnInit {
	trees: TreeNode[];
	selectedFile: TreeNode;
	constructor(
		private authDefineService: AuthDefineService,
		private utilService: UtilService,
		private fb: FormBuilder
	) {};
	ngOnInit() {
		//初始化权限表单
		this.authForm = this.fb.group({
			'parentName': new FormControl({
				disabled: true
			}),
			'parentId': new FormControl(),
			'name': new FormControl('', Validators.required)
		});
		//获取定义的数据
		this.authDefineService.GetAuthDefineList().subscribe((ret) => {
			var data = this.utilService.TransData(ret, "id", "parentId", "children");
			this.trees = < TreeNode[] > data;
		});
	};
	//select tree
	NodeSelect(e) {
		var m = this.utilService.CopyObj(this.authForm.value, e.node);
		e.node.parent && (m["parentName"] = e.node.parent.name);
		!e.node.parent && (m["parentName"] = "0");
		this.authForm.setValue(m);
	};
	//Form
	authForm: FormGroup;
	submitted: boolean;
	onSubmit(value: string) {
		this.submitted = true;
	}
	get display() {
		return JSON.stringify(this.authForm.value);
	}
}