import {
	RouterModule,
	Router
} from "@angular/router";
import {
	NgModule,
	Inject
} from '../shared/index';
import {
	AppsComponent
} from "./apps.component";
import {
	Http,
	HttpModule
} from "@angular/http";
import {
	STARWARS_BASE_URL
} from "../shared/constance.service";
import "rxjs/add/operator/map";
import "rxjs/add/operator/switchMap";

function RoutesF() {
	var ROUTES = [{
		path: '',
		component: AppsComponent
	}];
	var ajx = window["ajax"];
	ajx({
		type: "get",
		url: '/app/json/apps/routers.json',
		async: false,
		before: function() {
			console.log("before");
		},
		success: function(ret) {
			var data = JSON.parse(ret);
			for(var k in data) {
				ROUTES.push(data[k]);
			}
		},
		error: function() {
			console.log("error");
		}
	});
	return ROUTES;
};
@NgModule({
	imports: [
		HttpModule,
		RouterModule.forChild(RoutesF())
	],
	exports: [
		RouterModule
	]
})
export class AppsRoutes {
	constructor(private http: Http, private router: Router, @Inject(STARWARS_BASE_URL) private starwarUrl) {}
}