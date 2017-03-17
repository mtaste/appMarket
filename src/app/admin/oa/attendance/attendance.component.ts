import {
	Component,
	OnInit
} from '@angular/core';
import {
	Validators,
	UtilService
} from '../index';
@Component({
	selector: 'app-attendance',
	templateUrl: './attendance.component.html',
	styleUrls: ['./attendance.component.css']
})
export class AttendanceComponent implements OnInit {

	constructor(private utilService: UtilService) {
		this.utilService.loadingCompont = false;
	}

	ngOnInit() {}

}