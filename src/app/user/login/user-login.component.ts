import {
	Component,
	OnInit,
	Inject
} from '@angular/core';
import {
	FormBuilder,
	FormGroup,
	Validators
} from '@angular/forms';
@Component({
	selector: 'app-user-login',
	templateUrl: './user-login.component.html',
	styleUrls: ['./user-login.component.css'],
	providers: [FormBuilder]
})
export class UserLoginComponent implements OnInit {
	value: any;
	userform: FormGroup;
	constructor(private fb: FormBuilder) {
		this.userform = this.fb.group({
			name: this.fb.group({
				first: ['Nancy', Validators.minLength(2)],
				last: 'Drew',
			}),
			email: '',
		});
	}
	ngOnInit() {

	}

}