const cds = require('@sap/cds')
module.exports = cds.service.impl(function(){
    this.on('sleep',async ()=>{
try{
    let dbQuery = ' Call "sleep"( )';
    let result = cds.run(dbQuery,{});
    cds.log().info(result);
    return true ;

}catch(err){
    cds.log().error(err);
}

    } );
})