import {
	Component,
	OnInit
} from '@angular/core';
import {
	AppsRouterService
} from "./apps.routers.service";
@Component({
	selector: 'app-apps',
	templateUrl: './apps.component.html',
	styleUrls: ['./apps.component.css']
})
export class AppsComponent implements OnInit {
	list: Object[] = [];
	constructor(
		private appsRouterService: AppsRouterService
	) {
		this.appsRouterService.GetAppsList().subscribe((data) => {
			this.list = data;
		});
	}
	ngOnInit() {}

}