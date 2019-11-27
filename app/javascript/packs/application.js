import "bootstrap";
import { initSortable } from '../plugins/init_sortable';
import { initTyped } from '../plugins/init_typed';
import { initDisappearingImpact } from '../plugins/init_disappearing_impact';
import { incrementStress } from '../plugins/init_increment';
import { incrementScore } from '../plugins/init_increment';

initTyped();
incrementStress();
incrementScore();
initSortable();
initDisappearingImpact();

