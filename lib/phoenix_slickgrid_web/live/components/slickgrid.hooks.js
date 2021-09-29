import { Grid } from 'slickgrid-es6';

const columns = [
  {id: "uid", name: "User Id", field: "uid"},
  {id: "name", name: "Name", field: "name"},
];

const options = {
  enableCellNavigation: true,
  enableColumnReorder: false,
};

const Slickgrid = {
  mounted() {
    console.log("Table mounted!");
    var data = [
      {uid: "1", name:"Foo"},
      {uid: "2", name:"Bar"},
      {uid: "3", name:"Baz"},
    ];
    const grid = new Grid('#grid-render', data, columns, options);
  }
}

export { Slickgrid };
