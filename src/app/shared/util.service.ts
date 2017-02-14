import {
	Injectable,
	Inject
} from '@angular/core';

@Injectable()
export class UtilService {
	constructor() {};
	//删除节点
	DeleteTree(data, chindrenStr, name, values) {
		var ret = [];
		var value = {};
		for(var k in values) {
			value[values[k][name]] = "Y";
		}
		this.delTreeList(data, chindrenStr, name, value);
	};
	private delTreeList(data, chindrenStr, name, value) {
		for(var i in data) {
			var children = data[i][chindrenStr];
			if(value[data[i][name]] == "Y") {
				data.splice(i, 1);
			} else {
				this.delTreeList(children, chindrenStr, name, value);
			};
		}
	};
	//获取树节点数组
	GetArray(data, chindrenStr, name, values) {
		var ret = [];
		var value = {};
		for(var k in values) {
			value[values[k][name]] = "Y";
		}
		this.getArrayList(data, chindrenStr, name, value, ret);
		return ret;
	};
	private getArrayList(data, chindrenStr, name, value, ret) {
		for(var i in data) {
			var children = data[i][chindrenStr];
			if(value[data[i][name]] == "Y") {
				data[i].expanded = true;
				ret.push(data[i]);
			} else {
				data[i].expanded = false;
			}
			if(children) {
				this.getArrayList(children, chindrenStr, name, value, ret);
			};
		}
	};
	//json格式转树状结构
	TransData(a, idStr, pidStr, chindrenStr) {
		var r = [],
			hash = {},
			id = idStr,
			pid = pidStr,
			children = chindrenStr,
			i = 0,
			j = 0,
			len = a.length;
		for(; i < len; i++) {
			hash[a[i][id]] = a[i];
		}
		for(; j < len; j++) {
			var aVal = a[j],
				hashVP = hash[aVal[pid]];
			if(hashVP) {
				!hashVP[children] && (hashVP[children] = []);
				hashVP[children].push(aVal);
			} else {
				r.push(aVal);
			}
		}
		return r;
	};
	//获取属性所在Index
	GetArrayIndex(arry, f, v): any {
		for(var i in arry) {
			var t = arry[i];
			if(t[f] == v) {
				return i;
			}
		}
		return -1;
	};
	//复制值
	CopyObj(source, targer) {
		var m = {};
		for(var k in source) {
			m[k] = targer[k] || "";
		}
		return m;
	};
	//请除对像
	ClearObj(source) {
		var m = {};
		for(var k in source) {
			m[k] = "";
		}
		return m;
	};
}