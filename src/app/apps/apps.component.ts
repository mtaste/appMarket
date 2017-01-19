import {
	Component,
	OnInit
} from '@angular/core';
import {
	Router
} from '../shared/index';
@Component({
	selector: 'app-apps',
	templateUrl: './apps.component.html',
	styleUrls: ['./apps.component.css']
})
export class AppsComponent implements OnInit {
	list: Object[] = [];
	constructor(private router: Router) {
		var r = {
			path: "apps/run/community",
			url: "main/community",
			loadChildren: 'app/apps/community/app.module',
			name: 'Community'
		};
		this.list.push(r);
	}
	ngOnInit() {}

}