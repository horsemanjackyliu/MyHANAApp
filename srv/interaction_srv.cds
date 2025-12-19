using app.interactions from '../db/interactions';
using {sap} from '@sap/cds-common-content';
 using V_INTERACTION from '../db/interactions';


service CatalogService {


    @requires           : 'authenticated-user'
    @cds.redirection.target
    @odata.draft.enabled: true
    entity Interactions_Header as projection on interactions.Headers;

    @requires: 'Admin'
    entity Interactions_Items  as projection on interactions.Items;

    @restrict: [{
        grant: 'READ',
        where: 'country_code = ''DE'''
    }]
    @readonly
    entity Languages           as projection on sap.common.Languages;

function sleep() returns Boolean;

@readonly
entity V_Interaction as projection on V_INTERACTION;
}
