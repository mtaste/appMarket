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
	routes: string[];
	constructor(private router: Router) {
		var r = {
			path: "community",
			loadChildren: 'app/apps/community/app.module',
			name: 'Community'
		};
		console.log(this.router);
	}
	ngOnInit() {}

}