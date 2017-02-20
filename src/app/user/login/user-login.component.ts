import {
	Component,
	OnInit,
	Inject,
	FormBuilder,
	FormGroup,
	Validators,
	FormControl
} from '../../shared/index';
import {
	SelectItem
} from 'primeng/primeng';
import {
	Router
} from '@angular/router';
import {
	UserService
} from "../user.service";
@Component({
	selector: 'app-user-login',
	templateUrl: './user-login.component.html',
	styleUrls: ['./user-login.component.css'],
	providers: [FormBuilder]
})
export class UserLoginComponent implements OnInit {
	userform: FormGroup;
	submitted: boolean;
	description: string;
	constructor(
		private fb: FormBuilder,
		private router: Router,
		private userService: UserService
	) {}
	ngOnInit() {
		this.userform = this.fb.group({
			'userName': new FormControl('', Validators.required),
			'passWord': new FormControl('', Validators.compose([Validators.required, Validators.minLength(6)]))
		});
	}

	onSubmit(value: string) {
		this.submitted = true;
		this.userService.LoginUser(value, ret => {
			window.localStorage["token"] = ret.data;
			this.router.navigateByUrl('/admin');
		});
	}

	get diagnostic() {
		return JSON.stringify(this.userform.value);
	}

}