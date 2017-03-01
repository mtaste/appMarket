import {
	BookInComponent
} from "./book-in/book-in.component";
import {
	RouterModule
} from "@angular/router";
const routes = [{
	path: 'bookIn',
	component: BookInComponent
}];
export default RouterModule.forChild(routes);