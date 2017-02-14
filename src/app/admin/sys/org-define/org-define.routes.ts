import {
	OrgDefineComponent
} from "./org-define.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: '',
	component: OrgDefineComponent
}];
export default RouterModule.forChild(routes);