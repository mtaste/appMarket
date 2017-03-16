import {
	Component,
	OnInit
} from '@angular/core';
import {
	Validators,
	UtilService
} from '../index';
@Component({
	selector: 'report-mms-info',
	templateUrl: './info.component.html',
	styleUrls: ['./info.component.css']
})
export class InfoComponent implements OnInit {
	data: any;
	constructor(private utilService: UtilService) {
		this.utilService.loadingCompont = false;
	};

	ngOnInit() {
		this.data = {
			labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
			datasets: [{
				label: 'First Dataset',
				data: [65, 59, 80, 81, 56, 55, 40],
				fill: false,
				borderColor: '#4bc0c0'
			}, {
				label: 'Second Dataset',
				data: [28, 48, 40, 19, 86, 27, 90],
				fill: false,
				borderColor: '#565656'
			}]
		}
	};

}