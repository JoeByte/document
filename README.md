## js 常用方法
```js
// 对象
let object1 = {"name": "Joe", "age": 35}
let object2 = {"name": "Jenny", "age": 34}


// 数组
let arrayData = []
arrayData.push(object1)
arrayData.push(object2)


// 可以传入对象或数组
Object.keys(object1)
Object.values(arrayData)


// 字典
let mapData = new Map()
mapData.set("first", object1)
mapData.set("second", object2)
mapData.set(123, [1, 2, 3, 4, 5, 6])
mapData.has("first") // true
mapData.get("second") // {name: 'Jenny', age: 34}
mapData.delete("second") // true
mapData.keys() // MapIterator{'first', 123}
mapData.values() // MapIterator


// for in 遍历对象
for (let index in object1) {
    console.log(index) // name age
    console.log(object1[index]) // Joe 35
}

// for of 遍历数组
// 遍历`数组/类数组/字符串/map/set`等拥有迭代对象的集合
// 注: 不能遍历对象
for (let item of mapData) { // item 是一个数组 包含2个元素
    console.log(item)
}

// 遍历数组
for (let i = 0; i < arrayData.length; i++) {
    console.log(arrayData[i])
}

// 遍历对象
for (let i = 0; i < Object.keys(object2).length; i++) {
    let key = Object.keys(object2)[i]
    console.log(object2[key])
}
```