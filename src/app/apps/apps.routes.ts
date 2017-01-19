import {
	RouterModule
} from "@angular/router";
import {
	AppsComponent
} from "./apps.component";
import {
	AppsMainComponent
} from "./apps.main.component";
import {
	AppsRouterActivate
} from "./apps.routers.service";

const routes = [{
	path: '',
	component: AppsComponent,
	children: [{
		path: ""
	}, {
		path: "main/:id",
		component: AppsMainComponent,
		canActivate: [AppsRouterActivate]
	}]
}];

function GetRoters() {
	return routes;
}
export default RouterModule.forChild(GetRoters());